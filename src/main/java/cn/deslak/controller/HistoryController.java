package cn.deslak.controller;

import cn.deslak.vo.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhang_xin on 2019/05/24.
 */
@RequestMapping("/history")
@Controller
public class HistoryController extends BaseController{

    @GetMapping("/daily_review_history")
    public String dailyReviewHistory() {
        return "history/daily_review_history";
    }

    @GetMapping("/task_review_history")
    public String taskReviewHistory() {
        return "history/task_review_history";
    }

    @GetMapping("/daily_review_history/fetch")
    public Result dailyReviewHistoryFetch() {
        return Result.createSuccess();
    }
}
