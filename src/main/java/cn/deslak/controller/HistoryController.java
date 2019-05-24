package cn.deslak.controller;

import cn.deslak.entity.DailyReviewHistory;
import cn.deslak.service.HistoryService;
import cn.deslak.vo.Result;
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
    public Result dailyReviewHistoryFetch(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        PageInfo<DailyReviewHistory> pageInfo = historyService.getDailyReviewHistoryByPage();
        Result<DailyReviewHistory> result = Result.createSuccess();
        result.setCount(pageInfo.getTotal());
        result.setData(pageInfo.getList());
        return result;
    }
}
