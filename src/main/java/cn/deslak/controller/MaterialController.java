package cn.deslak.controller;

import cn.deslak.service.MaterialService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/30.
 */
@RequestMapping("/material")
@Controller
public class MaterialController extends BaseController{

    @Autowired
    private MaterialService materialService;

    @ResponseBody
    @GetMapping("/fetch")
    public JsonResult fetchAllCement() {
        return materialService.fetchAllMaterial();
    }

}
