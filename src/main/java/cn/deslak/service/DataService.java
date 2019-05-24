package cn.deslak.service;

import java.util.Map;

public interface DataService extends BaseService{

    /**
     * 获取车辆油耗信息
     * @return
     */
    Map<String, Object> getFuelInfo();

}
