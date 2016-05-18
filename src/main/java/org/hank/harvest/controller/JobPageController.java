package org.hank.harvest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/5/18.
 */
@Controller
public class JobPageController {

    private static final String[] jobChoicesIDs = new String[] {
        "salary", "experience", "graduation", "category"
    };
    private static final String[] jobChoices = new String[] {
        "薪资范围", "工作经验", "最低学历", "工作性质"
    };
    private static final String[][] jobChoicesContents = new String[][] { {
            "2K以下", "2K-5K", "5K-10K", "10K-15K", "15K-25K", "25K-50K", "50K以上"
        }, {
            "不限", "应届毕业生", "1年以下", "1-3年", "3-5年", "5-10年", "10年以上"
        }, {
            "不限", "大专", "本科", "硕士", "博士"
        }, {
            "全职", "兼职", "实习"
        }
    };

    @RequestMapping(value = "/job", method = RequestMethod.GET)
    public String showJob(Model model) {
        model.addAttribute("jobChoicesIDs", jobChoicesIDs);
        model.addAttribute("jobChoices", jobChoices);
        model.addAttribute("jobChoicesContents", jobChoicesContents);
        return "job";
    }


}
