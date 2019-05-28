package cn.deslak.service.impl;

import cn.deslak.dao.HistoryDao;
import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import cn.deslak.service.HistoryService;
import cn.deslak.vo.JsonResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryDao historyDao;

    @Override
    public JsonResult fetchDailyReviewHistoryByPage(Integer page, Integer limit, String batch, String section) {
        PageHelper.startPage(page,limit);
        List<DailyReviewHistory> list =  historyDao.fetchDailyReviewHistory(batch, section);
        PageInfo<DailyReviewHistory> pageInfo = new PageInfo(list);
        List<String> batchList = batchCount(historyDao.fetchBatchDateOfTask());
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
        List<String> batchList = batchCount(historyDao.fetchBatchDateOfTask());
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
}
