package cn.deslak.service.impl;

import cn.deslak.config.InvokeEnter;
import cn.deslak.service.OrbitService;
import cn.deslak.util.StringUtil;
import cn.deslak.vo.JsonResult;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


/**
 * @author zhang_xin on 2019/05/28.
 */
@Service("orbitService")
public class OrbitServiceImpl implements OrbitService {

    @Override
    public JSONObject truckOrbitHistory(String plateNum, String dateRange, String interval) {
        String path = "/v1/device/truck/history_location";
        String[] range = splitOnLayuiDateRangeString(dateRange);
        Map<String, String> querys = new HashMap();
        querys.put("plate_num", StringUtil.replaceBlankOnString(plateNum));
        querys.put("from", range[0]);
        querys.put("to", range[1]);
        querys.put("interval", interval);
        return JSONObject.parseObject(InvokeEnter.getMethod(path, querys));
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
