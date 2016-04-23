package org.hank.harvest.restful;

import org.hank.harvest.domain.User;
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
    public User getByEmail(String userEmail) {
        return userService.findByUserEmail(userEmail);
    }

    @RequestMapping(method = RequestMethod.POST)
    public User post(@RequestBody User user) {
        return userService.save(user);
    }

}
