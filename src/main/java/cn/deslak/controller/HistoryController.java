package cn.deslak.controller;

import cn.deslak.service.HistoryService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/task_refuse_edit")
    public String taskRefuseEdit() {
        return "history/task_refuse_edit";
    }

    @ResponseBody
    @GetMapping("/daily_review_history_fetch")
    public JsonResult dailyReviewHistoryFetch(Integer page, Integer limit, String batch, String section) {
        return historyService.fetchDailyReviewHistoryByPage(page, limit, batch, section);
    }

    @ResponseBody
    @PostMapping("/task_review_history_fetch")
    public JsonResult taskReviewHistoryFetch(Integer page, Integer limit, String batch, String cementId, String sectionId, String state, String isChangeCar, String license,
                                             String loadOverTime, String transportOverTime, String dateRange, String hasError, String materialId, String logistic) {
        return historyService.fetchTaskReviewHistory(page, limit, batch, cementId, sectionId, state, isChangeCar, license, loadOverTime, transportOverTime, dateRange, hasError
                                                    ,materialId, logistic);
    }

    @ResponseBody
    @PostMapping("/task_refuse_edit_fetch")
    public JsonResult fetchTaskRefuseEdit(Integer page, Integer limit) {
        return historyService.fetchTaskRefuseEdit(page, limit);
    }

    @ResponseBody
    @GetMapping("/task_refuse_edit_update")
    public JsonResult taskRefuseEditUpdate(String field, String value, String code) {
        return historyService.taskRefuseEditUpdate(field, value, code);
    }

    @ResponseBody
    @GetMapping("/sync_refuse_edit")
    public JsonResult syncRefuseEdit() {
        return historyService.syncRefuseEdit();
    }
}
