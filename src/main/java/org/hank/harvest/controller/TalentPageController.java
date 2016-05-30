package org.hank.harvest.controller;

import org.hank.harvest.domain.User;
import org.hank.harvest.service.UserService;
import org.hank.harvest.utils.TalentConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Administrator on 2016/5/18.
 */
@Controller
@RequestMapping("/talent")
public class TalentPageController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showTalent(Model model) {
        model.addAttribute("talentChoices", TalentConditionUtil.TALENT_CHOICES);
        model.addAttribute("talentChoicesIDs", TalentConditionUtil.TALENT_CHOICES_IDS);
        model.addAttribute("talentChoicesContents", TalentConditionUtil.TALENT_CHOICES_CONTENTS);
        return "talent";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String showTalentID(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("talent", userService.findOne(id));
        return "talent_id";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String showTalentSearch(Integer authorityID, Integer categoryID,
                                   Integer experienceID, Integer typeID,
                                   Integer graduationID, String keyword,
                                   Integer pageNum, Integer pageSize,
                                   Model model) {
        TalentConditionUtil talentConditions = new TalentConditionUtil(authorityID, categoryID,
                experienceID, typeID, graduationID, keyword);
        List<User> userList = userService.findByConditions(talentConditions, pageNum, pageSize);
        model.addAttribute("talentList", userService.findByConditions(talentConditions, pageNum, pageSize));
        return "talent_list";
    }

}
