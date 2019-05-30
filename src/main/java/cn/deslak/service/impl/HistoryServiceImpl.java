package cn.deslak.service.impl;

import cn.deslak.dao.HistoryDao;
import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import cn.deslak.service.DataService;
import cn.deslak.service.HistoryService;
import cn.deslak.service.TaskService;
import cn.deslak.util.BusinessUtil;
import cn.deslak.util.DateUtil;
import cn.deslak.vo.JsonResult;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryDao historyDao;
    @Autowired
    private DataService dataService;

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

    @Override
    public JsonResult fetchTaskReviewHistory(Integer page, Integer limit, String batch, String cementId, String sectionId, String state, String isChangeCar, String license,
                                             String loadOverTime, String transportOverTime) {
        PageHelper.startPage(page,limit);
        List<TaskReviewHistory> list = historyDao.fetchTaskReviewHistory(batch, cementId, sectionId, state, isChangeCar, license, loadOverTime, transportOverTime);
        PageInfo<TaskReviewHistory> pageInfo = new PageInfo(list);
        pageInfo = addValueForProps(pageInfo);
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
        List<String> resultList = new ArrayList(batchList.size());
        batchList.forEach(item -> resultList.add(item.substring(item.length() - 1)));
        Collections.sort(resultList);
        return resultList;
    }

    /**
     * 把油耗值加入列表
     * @param pageInfo
     * @return
     */
    public PageInfo<TaskReviewHistory> addValueForProps(PageInfo<TaskReviewHistory> pageInfo) {
        List<TaskReviewHistory> list = pageInfo.getList();
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
        return pageInfo;
    }
}
