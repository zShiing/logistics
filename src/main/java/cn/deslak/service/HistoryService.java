package cn.deslak.service;

import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import com.github.pagehelper.PageInfo;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface HistoryService extends BaseService{

    PageInfo<DailyReviewHistory> fetchDailyReviewHistoryByPage();

    PageInfo<TaskReviewHistory> fetchTaskReviewHistory(String batch, String cementId, String sectionId);

}
