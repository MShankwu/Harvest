package org.hank.harvest.restful;

import org.hank.harvest.domain.Company;
import org.hank.harvest.service.CompanyService;
import org.hank.harvest.utils.CompanyConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
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
    List<Company> getSome(HttpServletRequest request, Integer pageNum, Integer pageSize) {
        if (request.getParameter("service") != null) {
            String service = request.getParameter("service");
            switch (service) {
                case "topRating":
                    Integer topNum = Integer.valueOf(request.getParameter("topNum"));
                    return companyService.findTopRating(topNum);
                case "companyConditions":
                    Integer typeID = request.getParameter("typeID") != null? Integer.valueOf(request.getParameter("typeID")) : null;
                    String keyword = request.getParameter("keyword") != null && !request.getParameter("keyword").equals("")? request.getParameter("keyword") : null;
                    CompanyConditionUtil companyConditions = new CompanyConditionUtil(typeID, keyword);
                    return companyService.findByConditions(companyConditions, pageNum, pageSize);
                default:
                    break;
            }
        }
        return companyService.findAll();
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    Company getOne(@PathVariable("id") Integer id) {
        return companyService.findOne(id);
    }

}
