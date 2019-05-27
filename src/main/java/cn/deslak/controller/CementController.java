package cn.deslak.controller;

import cn.deslak.service.CementService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/27.
 */
@RequestMapping("/cement")
@Controller
public class CementController extends BaseController{

    @Autowired
    private CementService cementService;

    @ResponseBody
    @GetMapping("/cements")
    public JsonResult fetchAllCement() {
        return cementService.fetchAllCement();
    }

}
