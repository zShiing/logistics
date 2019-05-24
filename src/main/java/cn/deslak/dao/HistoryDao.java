package cn.deslak.dao;

import cn.deslak.entity.DailyReviewHistory;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Mapper
@Repository
public interface HistoryDao {

    List<DailyReviewHistory> fetchDailyReviewHistory();

}
