package org.hank.harvest.restful;

import org.hank.harvest.domain.Authority;
import org.hank.harvest.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public Authority getOne(@PathVariable("id") Integer id) {
        return authorityService.findOne(id);
    }

    @RequestMapping(method = RequestMethod.GET)
    public List<Authority> getAll() {
        return authorityService.findAll();
    }

    @RequestMapping(method = RequestMethod.POST, consumes = "application/json")
    public Integer postOne(@RequestBody Authority authority) {
        return authorityService.saveOne(authority);
    }

    @RequestMapping(method = RequestMethod.PUT, consumes = "application/json")
    public Authority putOne(@RequestBody Authority authority) {
        return authorityService.updateOne(authority);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public void deleteOne(@PathVariable("id") Integer id) {
        authorityService.deleteOne(id);
    }

}
