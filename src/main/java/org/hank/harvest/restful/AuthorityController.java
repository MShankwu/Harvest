package org.hank.harvest.restful;

import org.hank.harvest.domain.authority.AuthorityEntity;
import org.hank.harvest.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/6.
 */
@RestController
@RequestMapping("/authorities")
public class AuthorityController {

    private AuthorityService authorityService;

    @Autowired
    public void setAuthorityService(AuthorityService authorityService) {
        this.authorityService = authorityService;
    }

    @RequestMapping("/{id}")
    public AuthorityEntity get(@PathVariable("id") Integer id) {
        return authorityService.findById(id);
    }

}
