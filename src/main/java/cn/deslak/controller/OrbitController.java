package cn.deslak.controller;

import cn.deslak.service.OrbitService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    //TODO 现数据为了测试写死的，部署时修改
    @GetMapping
    public String orbit(Model model, String car, String acceptTime, String downTime) {
        model.addAttribute("isSearch", true);
        if(car != null && acceptTime != null && downTime != null) {
            String dateRange = "2019-05-01 00:00:00" + " - " + "2019-05-02 00:00:00";
            model.addAttribute("markers", orbitService.truckOrbitHistory("贵AB7714", dateRange, "30").get("data"));
            model.addAttribute("isSearch", false);
        }
        return "dataOftruck/orbit";
    }

    @ResponseBody
    @GetMapping("/search")
    public JSONObject orbitSearch(String plateNum, String dateRange, String interval) {
        return orbitService.truckOrbitHistory(plateNum, dateRange, interval);
    }

}
