package cn.deslak.controller;

import cn.deslak.entity.Task;
import cn.deslak.service.TaskService;
import cn.deslak.vo.Result;
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
    public Result task(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        PageInfo<Task> pageInfo = taskService.getTaskByPage();
        Result<Task> result = Result.createSuccess();
        result.setCount(pageInfo.getTotal());
        result.setData(pageInfo.getList());
        return result;
    }

    @ResponseBody
    @RequestMapping("/fuel")
    public Result fuel(String plateNum, Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        PageInfo<Task> pageInfo = taskService.fuel(plateNum);
        Result<Task> result = Result.createSuccess();
        result.setCount(pageInfo.getTotal());
        result.setData(pageInfo.getList());
        return result;
    }
}
