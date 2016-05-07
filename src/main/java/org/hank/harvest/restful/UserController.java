package org.hank.harvest.restful;

import org.hank.harvest.domain.user.UserEntity;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/4/15.
 */
@RestController
@RequestMapping("/users")
public class UserController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public UserEntity getByEmail(String email) {
        return userService.findByEmail(email);
    }

    @RequestMapping(method = RequestMethod.POST)
    public UserEntity post(@RequestBody UserEntity user) {
        return userService.save(user);
    }

}
