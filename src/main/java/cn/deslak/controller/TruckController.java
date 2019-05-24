package cn.deslak.controller;

import cn.deslak.service.TruckService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/base_info")
@Controller
public class TruckController extends BaseController{

    @Autowired
    private TruckService truckService;

    @ResponseBody
    @RequestMapping("/trucks")
    public JsonResult trucks() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", truckService.getAll());
        return jsonResult;
    }

}
