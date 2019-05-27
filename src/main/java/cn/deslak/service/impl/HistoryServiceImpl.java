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

import java.util.List;
import java.util.Map;

@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryDao historyDao;

    @Override
    public JsonResult fetchDailyReviewHistoryByPage(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        List<DailyReviewHistory> list =  historyDao.fetchDailyReviewHistory();
        PageInfo<DailyReviewHistory> pageInfo = new PageInfo(list);
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        return result;
    }

    @Override
    public JsonResult fetchTaskReviewHistory(Integer page, Integer limit, String batchDate, String cementId, String sectionId) {
        PageHelper.startPage(page,limit);
        List<TaskReviewHistory> list = historyDao.fetchTaskReviewHistory(batchDate, cementId, sectionId);
        PageInfo<TaskReviewHistory> pageInfo = new PageInfo(list);
        List<String> batchList = historyDao.fetchBatchList();
        JsonResult result = JsonResult.createSuccess();
        result.putData("list", pageInfo.getList());
        result.putData("count", pageInfo.getTotal());
        result.putData("batch", batchList);
        return result;
    }
}
