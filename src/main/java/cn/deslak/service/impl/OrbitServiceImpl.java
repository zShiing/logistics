package cn.deslak.service.impl;

import cn.deslak.service.DataService;
import cn.deslak.service.OrbitService;
import cn.deslak.util.DateUtil;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;



/**
 * @author zhang_xin on 2019/05/28.
 */
@Service("orbitService")
public class OrbitServiceImpl implements OrbitService {

    @Autowired
    private DataService dataService;

    @Cacheable("truckOrbitHistory")
    @Override
    public JSONObject truckOrbitHistory(String plateNum, String dateRange, String interval) {
        String[] range = DateUtil.splitOnLayuiDateRangeString(dateRange);
        String resultString = dataService.orbitHistory(plateNum, range[0], range[1], interval);
        return JSONObject.parseObject(resultString);
    }

}
