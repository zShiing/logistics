package cn.deslak.service.impl;

import cn.deslak.config.InvokeEnter;
import cn.deslak.dao.TaskDao;
import cn.deslak.entity.Task;
import cn.deslak.service.TaskService;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author zhang_xin on 2019/05/23.
 */
@Service("taskService")
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskDao taskDao;

    @Override
    public PageInfo<Task> getTaskByPage() {
        List<Task> list = taskDao.getTaskByPage();
        PageInfo<Task> pageInfo = new PageInfo(list);
        pageInfo = addValueForProps(pageInfo);
        return pageInfo;
    }

    @Override
    public PageInfo<Task> fuel(String plateNum) {
        PageInfo<Task> pageInfo = new PageInfo(taskDao.fuel(plateNum));
        pageInfo = addValueForProps(pageInfo);
        return pageInfo;
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
            String path = "/v1/device/truck/fuel";
            Map<String, String> querys = new HashMap();
            querys.put("plate_num", task.getLicense());
            querys.put("from", dateTransfer(task.getUpTime()));
            querys.put("to", dateTransfer(task.getDownTime()));
            JSONObject jsonObject = JSONObject.parseObject(InvokeEnter.getMethod(path, querys));
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
