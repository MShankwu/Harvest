package org.hank.harvest.restful;

import org.hank.harvest.domain.Company;
import org.hank.harvest.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@RestController
@RequestMapping("/api/1/companies")
public class CompanyAPI {

    private CompanyService companyService;

    @Autowired
    public void setCompanyService(CompanyService companyService) {
        this.companyService = companyService;
    }

    @RequestMapping(method = RequestMethod.GET)
    List<Company> getTopRating(Integer topNum) {
        return companyService.findTopRating(topNum);
    }

}
