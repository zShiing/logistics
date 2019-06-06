package cn.deslak.controller;

import cn.deslak.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * @author zhang_xin on 2019/06/05.
 */
@RequestMapping("/login")
@Controller
public class LoginController extends BaseController{

    @GetMapping
    public String login() {
        return "main/login";
    }

}
