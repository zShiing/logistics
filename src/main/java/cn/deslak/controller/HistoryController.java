package cn.deslak.controller;

import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.entity.TaskReviewHistory;
import cn.deslak.service.HistoryService;
import cn.deslak.vo.JsonResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/24.
 */
@RequestMapping("/history")
@Controller
public class HistoryController extends BaseController{

    @Autowired
    private HistoryService historyService;

    @GetMapping("/daily_review_history")
    public String dailyReviewHistory() {
        return "history/daily_review_history";
    }

    @GetMapping("/task_review_history")
    public String taskReviewHistory() {
        return "history/task_review_history";
    }

    @ResponseBody
    @GetMapping("/daily_review_history_fetch")
    public JsonResult dailyReviewHistoryFetch(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        PageInfo<DailyReviewHistory> pageInfo = historyService.fetchDailyReviewHistoryByPage();
        JsonResult result = JsonResult.createSuccess();
        result.putData("count", pageInfo.getTotal());
        result.putData("list", pageInfo.getList());
        return result;
    }

    @ResponseBody
    @GetMapping("/task_review_history_fetch")
    public JsonResult dailyReviewHistoryFetch(Integer page, Integer limit, String batch, String cementId, String sectionId) {
        PageHelper.startPage(page,limit);
        PageInfo<TaskReviewHistory> pageInfo = historyService.fetchTaskReviewHistory(batch, cementId, sectionId);
        JsonResult result = JsonResult.createSuccess();
        result.putData("list", pageInfo.getList());
        result.putData("count", pageInfo.getTotal());
        return result;
    }
}
