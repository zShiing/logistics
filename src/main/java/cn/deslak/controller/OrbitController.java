package cn.deslak.controller;

import cn.deslak.service.OrbitService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/28.
 */
@RequestMapping("/orbit")
@Controller
public class OrbitController extends BaseController{

    @Autowired
    private OrbitService orbitService;

    @GetMapping
    public String orbit() {
        return "dataOftruck/orbit";
    }

    @ResponseBody
    @GetMapping("/search")
    public JSONObject orbitSearch(String plateNum, String dateRange, String interval) {
        return orbitService.truckOrbitHistory(plateNum, dateRange, interval);
    }

}
