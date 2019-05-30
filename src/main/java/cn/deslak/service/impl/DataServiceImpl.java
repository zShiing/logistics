package cn.deslak.service.impl;

import cn.deslak.config.InvokeEnter;
import cn.deslak.service.DataService;
import cn.deslak.util.StringUtil;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


/**
 * @author zhang_xin on 2019/05/23.
 */
@Service("dataService")
public class DataServiceImpl implements DataService {

    @Override
    public String fuel(String plateNum, String from, String to) {
        String path = "/v1/device/truck/fuel";
        Map<String, String> querys = new HashMap();
        querys.put("plate_num", plateNum.trim());
        querys.put("from", from);
        querys.put("to", to);
        return InvokeEnter.getMethod(path, querys);
    }

    @Override
    public String orbitHistory(String plateNum, String from, String to, String interval) {
        String path = "/v1/device/truck/history_location";
        Map<String, String> querys = new HashMap();
        querys.put("plate_num", StringUtil.replaceBlankOnString(plateNum));
        querys.put("from", from);
        querys.put("to", to);
        querys.put("interval", interval);
        querys.put("map", "baidu");
        return InvokeEnter.getMethod(path, querys);
    }
}
