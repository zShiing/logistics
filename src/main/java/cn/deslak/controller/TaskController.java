package cn.deslak.controller;

import cn.deslak.service.TaskService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/23.
 */
@RequestMapping("/task")
@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

    @ResponseBody
    @GetMapping("/find")
    public JsonResult task(Integer page, Integer limit) {
        return taskService.fetchTaskByPage(page, limit);
    }

    @ResponseBody
    @RequestMapping("/fuel")
    public JsonResult fuel(Integer page, Integer limit, String plateNum) {
        return taskService.fuel(page, limit, plateNum);
    }
}
