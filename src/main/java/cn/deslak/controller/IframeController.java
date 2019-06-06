package cn.deslak.controller;

import cn.deslak.entity.TaskRefuseEdit;
import cn.deslak.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/iframe")
@Controller
public class IframeController extends BaseController {

    @Autowired
    private HistoryService historyService;

    @GetMapping("/task_refuse_edit_iframe")
    public String taskRefuseEditIframe(Model model, String code) {
        TaskRefuseEdit taskRefuseEdit = historyService.findTaskRefuseEditByCode(code);
        model.addAttribute("taskRefuseEdit", taskRefuseEdit);
        return "iframe/task_refuse_edit_iframe";
    }

}
