package cn.deslak.service;

import cn.deslak.vo.JsonResult;


/**
 * @author zhang_xin on 2019/05/23.
 */
public interface TruckService extends BaseService{

    /**
     * 获取所有车辆信息
     * @return
     */
    JsonResult fetchAllTrucks();

}
