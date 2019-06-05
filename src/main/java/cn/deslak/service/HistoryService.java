package cn.deslak.service;

import cn.deslak.vo.JsonResult;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface HistoryService extends BaseService{

    JsonResult fetchDailyReviewHistoryByPage(Integer page, Integer limit, String batch, String section);

    JsonResult fetchTaskReviewHistory(Integer page, Integer limit, String batch, String cementId, String sectionId, String state, String isChangeCar, String license,
                                      String loadOverTime, String transportOverTime, String dateRange, String hasError, String materialId, String logistic,
                                      String motorcadeId, String carId);

    JsonResult fetchTaskRefuseEdit(Integer page, Integer limit);

    JsonResult taskRefuseEditUpdate(String field, String value, String code);

    JsonResult syncRefuseEdit();
}
