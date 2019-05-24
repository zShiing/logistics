package cn.deslak.dao;

import cn.deslak.entity.Task;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface TaskDao {

    /**
     * 分页查找任务
     * @return
     */
    List<Task> getTaskByPage();

    /**
     * 根据车票查询任务单
     * @param plateNum
     * @return
     */
    List<Task> fuel(@Param("plateNum") String plateNum);
}
