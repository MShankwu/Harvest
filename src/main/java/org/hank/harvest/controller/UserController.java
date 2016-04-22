package org.hank.harvest.controller;

import org.hank.harvest.domain.User;
import org.hank.harvest.domain.UserRepository;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/4/15.
 */
@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public User getByEmail(String userEmail) {
        return userService.findByUserEmail(userEmail);
    }

    @RequestMapping(method = RequestMethod.POST)
    public User post(User user) {
        return userService.save(user);
    }

}
