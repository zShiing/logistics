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

    List<DailyReviewHistory> fetchDailyReviewHistory();

    /**
     * 获取任务审核历史
     * @param batchDate
     * @param cementId
     * @param sectionId
     * @return
     */
    List<TaskReviewHistory> fetchTaskReviewHistory(@Param("batchDate") String batchDate, @Param("cementId") String cementId, @Param("sectionId") String sectionId);

    /**
     * 获取任务审核历史的日期
     * @return
     */
    List<String> fetchBatchList();

//    /**
//     * 获取批次总数
//     */
//    List<String> fetchPiciList();

}
