package cn.deslak.controller;

import cn.deslak.entity.User;
import cn.deslak.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@RequestMapping("/index")
@Controller
public class IndexController extends BaseController{

    @Autowired
    private UserService userService;

    @PostMapping
    public String index(String name, String password, HttpServletRequest request) {
        User user = userService.findByNameNPwd(name, password);
        if(user == null) {
            return "main/login";
        }
        request.getSession().setAttribute("user", user);
        return "index";
    }

}
