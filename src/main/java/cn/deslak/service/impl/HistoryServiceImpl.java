package cn.deslak.service.impl;

import cn.deslak.dao.HistoryDao;
import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import cn.deslak.service.HistoryService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryDao historyDao;

    @Override
    public PageInfo<DailyReviewHistory> fetchDailyReviewHistoryByPage() {
        List<DailyReviewHistory> list =  historyDao.fetchDailyReviewHistory();
        return new PageInfo(list);
    }

    @Override
    public PageInfo<TaskReviewHistory> fetchTaskReviewHistory(String batch, String cementId, String sectionId) {
        List<TaskReviewHistory> list = historyDao.fetchTaskReviewHistory(batch, cementId, sectionId);
        return new PageInfo(list);
    }
}
