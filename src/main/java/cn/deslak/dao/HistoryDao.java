package cn.deslak.dao;

import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

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
     * @return
     */
    List<TaskReviewHistory> fetchTaskReviewHistory(@Param("batch") String batch, @Param("cementId") String cementId, @Param("sectionId") String sectionId, @Param("state") String state,
                                                   @Param("isChangeCar") String isChangeCar, @Param("license") String license, @Param("loadOverTime") String loadOverTime,
                                                   @Param("transportOverTime") String transportOverTime, @Param("rangeStart") String rangeStart,
                                                   @Param("rangeEnd") String rangeEnd);

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

}
