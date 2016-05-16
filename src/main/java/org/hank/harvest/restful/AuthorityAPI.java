package org.hank.harvest.restful;

import org.hank.harvest.domain.Authority;
import org.hank.harvest.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/16.
 */
@RestController
@RequestMapping("/api/1/authorities")
public class AuthorityAPI {

    private AuthorityService authorityService;

    @Autowired
    public void setAuthorityService(AuthorityService authorityService) {
        this.authorityService = authorityService;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Authority get(@PathVariable("id") Integer id) {
        return authorityService.find(id);
    }

}
