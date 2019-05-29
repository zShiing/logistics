package cn.deslak.service.impl;

import cn.deslak.dao.TaskDao;
import cn.deslak.entity.Task;
import cn.deslak.service.DataService;
import cn.deslak.service.TaskService;
import cn.deslak.vo.JsonResult;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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
    private PageInfo<Task> addValueForProps(PageInfo<Task> pageInfo) {
        List<Task> list = pageInfo.getList();
        for(Task task : list) {
            if(!varValidation(task)) {
                continue;
            }
            String resultString = dataService.fuel(task.getLicense(), dateTransfer(task.getUpTime()), dateTransfer(task.getDownTime()));
            JSONObject jsonObject = JSONObject.parseObject(resultString);
            Map<String, Object> map = (Map<String, Object>)jsonObject.get("data");
            if(!map.isEmpty()) {
                task.setMileage(new BigDecimal(map.get("mileage").toString()));
                task.setDrivingTime(Integer.parseInt(map.get("driving_time").toString()));
                task.setFuel(new BigDecimal(map.get("fuel").toString()));
            }
        }
        return pageInfo;
    }

    /**
     * 检查参数合法
     * @param task
     * @return
     */
    private Boolean varValidation(Task task) {
        String license = task.getLicense();
        Date upTime = task.getUpTime();
        Date downTime = task.getDownTime();
        if(license == null || "".equals(license.trim())) {
            return false;
        }
        if(upTime == null) {
            return false;
        }
        if(downTime == null) {
            return false;
        }
        return true;
    }

    /**
     * 转换日期格式
     * @param date
     * @return
     */
    private String dateTransfer(Date date) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        Instant instant = date.toInstant();
        ZoneId zoneId = ZoneId.systemDefault();
        return LocalDateTime.ofInstant(instant, zoneId).format(formatter);
    }

}
