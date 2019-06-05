package cn.deslak.dao;

import cn.deslak.entity.Motorcade;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/06/05.
 */
@Mapper
@Repository
public interface MotorcadeDao {

    /**
     * 获取所有车队信息
     * @return
     */
    List<Motorcade> fetchAllMotorcade();

}
