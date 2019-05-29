package cn.deslak.service.impl;

import cn.deslak.service.DataService;
import cn.deslak.service.OrbitService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



/**
 * @author zhang_xin on 2019/05/28.
 */
@Service("orbitService")
public class OrbitServiceImpl implements OrbitService {

    @Autowired
    private DataService dataService;

    @Override
    public JSONObject truckOrbitHistory(String plateNum, String dateRange, String interval) {
        String[] range = splitOnLayuiDateRangeString(dateRange);
        String resultString = dataService.orbitHistory(plateNum, range[0], range[1], interval);
        return JSONObject.parseObject(resultString);
    }

    /**
     * 分割layui日期范围的字符串
     * @param dateRange
     * @return
     */
    private String[] splitOnLayuiDateRangeString(String dateRange) {
        return dateRange.split(" - ");
    }

}
