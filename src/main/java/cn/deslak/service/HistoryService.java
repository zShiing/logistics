package cn.deslak.service;

import cn.deslak.vo.JsonResult;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface HistoryService extends BaseService{

    JsonResult fetchDailyReviewHistoryByPage(Integer page, Integer limit, String batchDate, String section);

    JsonResult fetchTaskReviewHistory(Integer page, Integer limit, String batchDate, String cementId, String sectionId);

}
