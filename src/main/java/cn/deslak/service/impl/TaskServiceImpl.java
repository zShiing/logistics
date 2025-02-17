package cn.deslak.service.impl;

import cn.deslak.dao.TaskDao;
import cn.deslak.entity.Task;
import cn.deslak.service.DataService;
import cn.deslak.service.TaskService;
import cn.deslak.util.BusinessUtil;
import cn.deslak.util.DateUtil;
import cn.deslak.vo.JsonResult;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * @author zhang_xin on 2019/05/23.
 */
@Service("taskService")
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskDao taskDao;
    @Autowired
    private DataService dataService;

    @Override
    public JsonResult fetchTaskByPage(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        PageInfo<Task> pageInfo = new PageInfo(taskDao.getTasks());
        pageInfo = addValueForProps(pageInfo);
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        return result;
    }

    @Override
    public JsonResult fuel(Integer page, Integer limit, String plateNum) {
        PageHelper.startPage(page,limit);
        PageInfo<Task> pageInfo = new PageInfo(taskDao.fuel(plateNum));
        pageInfo = addValueForProps(pageInfo);
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        return result;
    }

    /**
     * 把油耗值加入列表
     * @param pageInfo
     * @return
     */
    public PageInfo<Task> addValueForProps(PageInfo<Task> pageInfo) {
        List<Task> list = pageInfo.getList();
        for(Task task : list) {
            if(!BusinessUtil.varValidation(task.getLicense(), task.getAcceptTime(), task.getDownTime())) {
                continue;
            }
            String resultString = dataService.fuel(task.getLicense(), DateUtil.dateTransfer(task.getAcceptTime()), DateUtil.dateTransfer(task.getDownTime()));
            JSONObject jsonObject = JSONObject.parseObject(resultString);
            Map<String, Object> map = (Map<String, Object>)jsonObject.get("data");
            if(!(map == null)) {
                task.setMileage(new BigDecimal(map.get("mileage").toString()));
                task.setDrivingTime(Integer.parseInt(map.get("driving_time").toString()));
                task.setFuel(new BigDecimal(map.get("fuel").toString()));
            }
        }
        return pageInfo;
    }

}
