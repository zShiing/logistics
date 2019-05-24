package cn.deslak.service;

import java.util.Map;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface DataService extends BaseService{

    /**
     * 获取车辆油耗信息
     * @return
     */
    Map<String, Object> getFuelInfo();

}
