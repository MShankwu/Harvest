package org.hank.harvest.restful;

import org.hank.harvest.domain.company.CompanyEntity;
import org.hank.harvest.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/6.
 */
@RestController
@RequestMapping("/companies")
public class CompanyController {

    private CompanyService companyService;

    @Autowired
    public void setCompanyService(CompanyService companyService) {
        this.companyService = companyService;
    }

    @RequestMapping("/{id}")
    public CompanyEntity findById(@PathVariable("id") Integer id) {
        return companyService.findById(id);
    }

}
