package cn.deslak.controller;

import cn.deslak.service.DictsService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/28.
 */
@RequestMapping("/dicts")
@Controller
public class DictsController extends BaseController{

    @Autowired
    private DictsService dictsService;

    @ResponseBody
    @GetMapping("/fetch")
    public JsonResult fetchAllDisct(String table, String field) {
        return dictsService.fetchDicts(table ,field);
    }

    @ResponseBody
    @GetMapping("/state_special")
    public JsonResult fetchForSpecialRequired() {
        return dictsService.fetchForSpecialRequired();
    }
}
