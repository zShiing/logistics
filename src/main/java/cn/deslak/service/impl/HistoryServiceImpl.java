package cn.deslak.service.impl;

import cn.deslak.dao.HistoryDao;
import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import cn.deslak.service.DataService;
import cn.deslak.service.HistoryService;
import cn.deslak.util.BusinessUtil;
import cn.deslak.util.DateUtil;
import cn.deslak.vo.JsonResult;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.*;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryDao historyDao;
    @Autowired
    private DataService dataService;
    @Value("${hxgd.server1}")
    private String serverUrl;
    @Value("${hxgd.img-url}")
    private String imgUrl;

    @Cacheable("fetchDailyReviewHistoryByPage")
    @Override
    public JsonResult fetchDailyReviewHistoryByPage(Integer page, Integer limit, String batch, String section) {
        PageHelper.startPage(page,limit);
        List<DailyReviewHistory> list =  historyDao.fetchDailyReviewHistory(batch, section);
        PageInfo<DailyReviewHistory> pageInfo = new PageInfo(list);
        List<String> batchList = batchCount(historyDao.fetchBatchOfDaily());
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        result.putData("batch", batchList);
        return result;
    }

    @Cacheable("fetchTaskReviewHistory")
    @Override
    public JsonResult fetchTaskReviewHistory(Integer page, Integer limit, String batch, String cementId, String sectionId, String state, String isChangeCar, String license,
                                             String loadOverTime, String transportOverTime, String dateRange, String hasError, String materialId, String logistic,
                                             String motorcadeId, String carId, String acceptTime, String upTime, String downTime) {
        PageHelper.startPage(page,limit);
        String[] range = DateUtil.splitOnLayuiDateRangeString(dateRange);
        String[] acceptTimeRange = DateUtil.splitOnLayuiDateRangeString(acceptTime);
        String[] upTimeRange = DateUtil.splitOnLayuiDateRangeString(upTime);
        String[] downTimeRange = DateUtil.splitOnLayuiDateRangeString(downTime);
        List<TaskReviewHistory> list = historyDao.fetchTaskReviewHistory(batch, cementId, sectionId, state, isChangeCar, license, loadOverTime, transportOverTime,
                                                                        range == null ? null : range[0], range == null ? null : range[1], hasError, materialId, logistic,
                                                                        motorcadeId, carId,
                                                                        acceptTimeRange == null ? null : acceptTimeRange[0],
                                                                        acceptTimeRange == null ? null : acceptTimeRange[1],
                                                                        upTimeRange == null ? null : upTimeRange[0],
                                                                        upTimeRange == null ? null : upTimeRange[1],
                                                                        downTimeRange == null ? null : downTimeRange[0],
                                                                        downTimeRange == null ? null : downTimeRange[1]);
        PageInfo<TaskReviewHistory> pageInfo = new PageInfo(list);
        addValueForProps(pageInfo.getList());
        setImgUrl(pageInfo.getList());
        List<String> batchList = batchCount(historyDao.fetchBatchOfTask());
        JsonResult result = JsonResult.createSuccess();
        result.putData("list", pageInfo.getList());
        result.putData("count", pageInfo.getTotal());
        result.putData("batch", batchList);
        return result;
    }

    /**
     * 计算批次数量
     * @param batchList
     * @return
     */
    private List<String> batchCount(List<String> batchList) {
        Set<String> resultList = new LinkedHashSet(batchList.size());
        batchList.forEach(item -> resultList.add(item.substring(item.length() - 1)));
        return new ArrayList<>(resultList);
    }

    private void setImgUrl(List<TaskReviewHistory> list) {
        for(TaskReviewHistory task : list) {
            if(task.getRealUpImg() != null ) {
                task.setRealUpImg(serverUrl + imgUrl + "/" + task.getRealUpImg());
            }
            if(task.getRealDownImg() != null ) {
                task.setRealDownImg(serverUrl + imgUrl + "/" + task.getRealDownImg());
            }
        }
    }

    /**
     * 把油耗值加入列表
     * @param list
     * @return
     */
    private void addValueForProps(List<TaskReviewHistory> list) {
        for(TaskReviewHistory task : list) {
            if(!BusinessUtil.varValidation(task.getCar(), task.getAcceptTime(), task.getDownTime())) {
                continue;
            }
            String resultString = dataService.fuel(task.getCar(), DateUtil.dateTransfer(task.getAcceptTime()), DateUtil.dateTransfer(task.getDownTime()));
            JSONObject jsonObject = JSONObject.parseObject(resultString);
            Map<String, Object> map = (Map<String, Object>)jsonObject.get("data");
            if(!(map == null)) {
                task.setMileage(new BigDecimal(map.get("mileage").toString()));
                task.setDrivingTime(Integer.parseInt(map.get("driving_time").toString()));
                task.setFuel(new BigDecimal(map.get("fuel").toString()));
            }
        }
    }

    @Override
    public JsonResult fetchTaskRefuseEdit(Integer page, Integer limit) {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", historyDao.fetchTaskRefuseEdit());
        return jsonResult;
    }

    @Override
    public JsonResult taskRefuseEditUpdate(String field, String value, String code) {
        JsonResult jsonResult = JsonResult.createSuccess();
        Integer result = historyDao.taskRefuseEditUpdate(field, value, code);
        if(result < 0) {
            return JsonResult.createFaild("修改失败");
        }
        return jsonResult;
    }

    @Override
    public JsonResult syncRefuseEdit() {
        JsonResult jsonResult = JsonResult.createSuccess();
        Integer result = historyDao.syncRefuseEdit();
        if(result < 0) {
            return JsonResult.createFaild("同步失败");
        }
        return jsonResult;
    }
}
