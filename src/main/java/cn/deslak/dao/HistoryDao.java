package cn.deslak.dao;

import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskRefuseEdit;
import cn.deslak.entity.TaskReviewHistory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Mapper
@Repository
public interface HistoryDao {

    /**
     * 获取计划审核历史
     * @param batch
     * @param section
     * @return
     */
    List<DailyReviewHistory> fetchDailyReviewHistory(@Param("batch") String batch, @Param("section") String section);

    /**
     * 获取任务审核历史
     * @param batch
     * @param cementId
     * @param sectionId
     * @param state
     * @param isChangeCar
     * @param license
     * @param loadOverTime
     * @param transportOverTime
     * @param rangeStart
     * @param rangeEnd
     * @param hasError
     * @param materialId
     * @param logistic
     * @param motorcadeId
     * @param carId
     * @return
     */
    List<TaskReviewHistory> fetchTaskReviewHistory(@Param("batch") String batch, @Param("cementId") String cementId, @Param("sectionId") String sectionId, @Param("state") String state,
                                                   @Param("isChangeCar") String isChangeCar, @Param("license") String license, @Param("loadOverTime") String loadOverTime,
                                                   @Param("transportOverTime") String transportOverTime, @Param("rangeStart") String rangeStart,
                                                   @Param("rangeEnd") String rangeEnd, @Param("hasError") String hasError, @Param("materialId") String materialId,
                                                   @Param("logistic") String logistic, @Param("motorcadeId") String motorcadeId, @Param("carId") String carId,
                                                   @Param("acceptTimeStart") String acceptTimeStart, @Param("acceptTimeEnd") String acceptTimeEnd, @Param("upTimeStart") String upTimeStart,
                                                   @Param("upTimeEnd") String upTimeEnd, @Param("downTimeStart") String downTimeStart, @Param("downTimeEnd") String downTimeEnd);

    /**
     * 获取任务审核历史的日期
     * @return
     */
    List<String> fetchBatchOfTask();

    /**
     * 获取计划审核历史的日期
     * @return
     */
    List<String> fetchBatchOfDaily();

    /**
     * 获取所有任务拒绝表数据
     * @return
     */
    List<TaskReviewHistory> fetchTaskRefuseEdit();

    /**
     * 修改值
     * @param tasks
     * @param realUp
     * @param realDown
     * @param beforeCar
     * @param upOverTime
     * @param traverOverTime
     * @return
     */
    Integer taskRefuseEditUpdate(@Param("tasks") BigDecimal tasks, @Param("realUp") BigDecimal realUp, @Param("realDown") BigDecimal realDown,
                                 @Param("beforeCar") String beforeCar, @Param("upOverTime") String upOverTime, @Param("traverOverTime") String traverOverTime);

    /**
     * 根据编号查找任务拒绝单
     * @param code
     * @return
     */
    TaskRefuseEdit findTaskRefuseEditByCode(@Param("code") String code);

    /**
     * 同步任务拒绝
     * @return
     */
    Integer syncRefuseEdit();

}
