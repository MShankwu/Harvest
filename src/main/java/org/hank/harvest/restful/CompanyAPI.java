package org.hank.harvest.restful;

import org.hank.harvest.domain.Company;
import org.hank.harvest.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
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
    List<Company> getSome(HttpServletRequest request) {
        if (request.getParameter("service") != null) {
            String service = request.getParameter("service");
            switch (service) {
                case "topRating":
                    Integer topNum = Integer.valueOf(request.getParameter("topNum"));
                    return companyService.findTopRating(topNum);
                default:
                    break;
            }
        }
        return null;
    }

}
