package org.hank.harvest.restful;

import org.hank.harvest.domain.UserDetail;
import org.hank.harvest.service.UserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public UserDetail getOne(@PathVariable("id") Integer id) {
        return userDetailService.findOne(id);
    }

    @RequestMapping(method = RequestMethod.GET)
    public UserDetail getOneIndirect(Integer userID) {
        return userDetailService.findOneByUserID(userID);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = "application/json")
    public Integer postOne(@RequestBody UserDetail userDetail) {
        return userDetailService.saveOne(userDetail);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, consumes = "application/json")
    public UserDetail putOne(@RequestBody UserDetail userDetail, @PathVariable("id") Integer id) {
        userDetail.setId(id);
        return userDetailService.editOne(userDetail);
    }

}
