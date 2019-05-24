package cn.deslak.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhang_xin on 2019/05/23.
 */
@RequestMapping("/fuel")
@Controller
public class DataController extends BaseController {

    @GetMapping
    public String fuel() {
        return "dataOfTruck/fuel";
    }

}
