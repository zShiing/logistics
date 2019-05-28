package cn.deslak.controller;

import cn.deslak.service.HistoryService;
import cn.deslak.vo.JsonResult;
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
    public JsonResult dailyReviewHistoryFetch(Integer page, Integer limit, String batch, String section) {
        return historyService.fetchDailyReviewHistoryByPage(page, limit, batch, section);
    }

    @ResponseBody
    @GetMapping("/task_review_history_fetch")
    public JsonResult taskReviewHistoryFetch(Integer page, Integer limit, String batch, String cementId, String sectionId, String state, String isChangeCar, String license,
                                             String loadOverTime, String transportOverTime) {
        return historyService.fetchTaskReviewHistory(page, limit, batch, cementId, sectionId, state, isChangeCar, license, loadOverTime, transportOverTime);
    }
}
