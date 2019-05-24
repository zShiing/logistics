package cn.deslak.dao;

import cn.deslak.entity.Truck;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/23.
 */
@Repository
@Mapper
public interface TruckDao {

    /**
     * 获取所有车辆信息
     * @return
     */
    List<Truck> gatAll();

}
