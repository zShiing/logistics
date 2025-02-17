package cn.deslak.controller;

import cn.deslak.service.TruckService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/23.
 */
@RequestMapping("/truck")
@Controller
public class TruckController extends BaseController{

    @Autowired
    private TruckService truckService;

    @ResponseBody
    @RequestMapping("/fetch")
    public JsonResult fetchAllTrucks() {
        return truckService.fetchAllTrucks();
    }

}
