package org.hank.harvest.restful;

import org.hank.harvest.domain.UserDetail;
import org.hank.harvest.service.UserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/19.
 */
@RestController
@RequestMapping("api/1/userDetails")
public class UserDetailAPI {

    private UserDetailService userDetailService;

    @Autowired
    public void setUserDetailService(UserDetailService userDetailService) {
        this.userDetailService = userDetailService;
    }

    @RequestMapping("/{id}")
    public UserDetail getOne(@PathVariable("id") Integer id) {
        return userDetailService.findOne(id);
    }

}
