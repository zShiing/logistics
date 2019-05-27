package cn.deslak.controller;

import cn.deslak.entity.Task;
import cn.deslak.service.TaskService;
import cn.deslak.vo.JsonResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
        PageHelper.startPage(page,limit);
        PageInfo<Task> pageInfo = taskService.getTaskByPage();
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        return result;
    }

    @ResponseBody
    @RequestMapping("/fuel")
    public JsonResult fuel(String plateNum, Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        PageInfo<Task> pageInfo = taskService.fuel(plateNum);
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        return result;
    }
}
