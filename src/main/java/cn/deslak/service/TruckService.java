package cn.deslak.service;

import cn.deslak.entity.Truck;

import java.util.List;


public interface TruckService extends BaseService{

    /**
     * 获取所有车辆信息
     * @return
     */
    List<Truck> getAll();

}
