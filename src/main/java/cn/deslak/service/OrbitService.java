package cn.deslak.service;

import com.alibaba.fastjson.JSONObject;


/**
 * @author zhang_xin on 2019/05/28.
 */
public interface OrbitService extends BaseService{


    JSONObject truckOrbitHistory(String plate_num, String dateRange, String interval);

}
