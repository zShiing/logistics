package cn.deslak.controller;

import cn.deslak.entity.User;
import cn.deslak.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author zhang_xin on 2019/06/05.
 */
@RequestMapping("/login")
@Controller
public class LoginController extends BaseController{

    @Autowired
    private UserService userService;

    @GetMapping
    public String login() {
        return "main/login";
    }

    @PostMapping("/index")
    public String login(String name, String password, HttpServletRequest request) {
        User user = userService.findByNameNPwd(name, password);
        if(user == null) {
            return "main/login";
        }
        request.getSession().setAttribute("user", user);
        return "history/task_review_history";
    }
}
