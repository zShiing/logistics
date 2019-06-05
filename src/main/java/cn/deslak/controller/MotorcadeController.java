package cn.deslak.controller;

import cn.deslak.service.MotorcadeService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/06/05.
 */
@RequestMapping("/motorcade")
@Controller
public class MotorcadeController extends BaseController{

    @Autowired
    private MotorcadeService motorcadeService;

    @ResponseBody
    @GetMapping("/fetch")
    public JsonResult fetchAllMotorcade() {
        return motorcadeService.fetchAllMotorcade();
    }

}
