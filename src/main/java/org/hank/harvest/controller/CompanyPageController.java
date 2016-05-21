package org.hank.harvest.controller;

import org.hank.harvest.service.CompanyService;
import org.hank.harvest.utils.CompanyConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/5/18.
 */
@Controller
@RequestMapping("/company")
public class CompanyPageController {

    private CompanyService companyService;

    @Autowired
    public void setCompanyService(CompanyService companyService) {
        this.companyService = companyService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showCompany(Model model) {
        model.addAttribute("types", CompanyConditionUtil.TYPES);
        return "company";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String showCompanySearch(Integer typeID, String keyword,
                                    Integer pageNum, Integer pageSize, Model model) {
        CompanyConditionUtil companyConditions = new CompanyConditionUtil(typeID, keyword);
        model.addAttribute("companyList", companyService.findByConditions(companyConditions, pageNum, pageSize));
        return "company_list";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String showCompanyID(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("company", companyService.findOne(id));
        return "company_id";
    }

}
