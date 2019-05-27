package cn.deslak.service;

import cn.deslak.entity.Truck;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface TruckService extends BaseService{

    /**
     * 获取所有车辆信息
     * @return
     */
    List<Truck> fetchAllTrucks();

}
