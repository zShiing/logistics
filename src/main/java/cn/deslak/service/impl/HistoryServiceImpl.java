package cn.deslak.service.impl;

import cn.deslak.dao.HistoryDao;
import cn.deslak.entity.DailyReviewHistory;
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
    public PageInfo<DailyReviewHistory> getDailyReviewHistoryByPage() {
        List<DailyReviewHistory> list =  historyDao.fetchDailyReviewHistory();
        return new PageInfo(list);
    }
}
