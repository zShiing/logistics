package cn.deslak.controller;

import cn.deslak.service.SectionService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/27.
 */
@RequestMapping("/section")
@Controller
public class SectionController extends BaseController{

    @Autowired
    private SectionService sectionService;

    @ResponseBody
    @GetMapping("/sections")
    public JsonResult fetchAllSection() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", sectionService.fetchAllSection());
        return jsonResult;
    }

}
