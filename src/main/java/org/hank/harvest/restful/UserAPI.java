package org.hank.harvest.restful;

import org.hank.harvest.domain.User;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Administrator on 2016/5/16.
 */
@RestController
@RequestMapping("/api/1/users")
public class UserAPI {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public User get(@ModelAttribute User user) {
        return userService.findOne(user);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = "application/json")
    public Integer post(@RequestBody User user) {
        return userService.save(user).getId();
    }

}
