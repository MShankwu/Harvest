package org.hank.harvest.restful;

import org.hank.harvest.domain.*;
import org.hank.harvest.domain.Process;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    public List<User> getSome(HttpServletRequest request, @ModelAttribute User user) {
        if (request.getParameter("service") != null) {
            String service = request.getParameter("service");
            switch (service) {
                case "indirectOne":
                    return userService.findIndirect(user);
                case "":
                    return null;
                default:
                    break;
            }
        }
        return null;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public User getOne(@PathVariable("id") Integer id) {
        return userService.findOne(id);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = "application/json")
    public Integer postOne(@RequestBody User user) {
        return userService.saveOne(user).getId();
    }

    @RequestMapping(method = RequestMethod.PUT, consumes = "application/json")
    public User putOne(@RequestBody User user) {
        return userService.editOne(user);
    }

    @RequestMapping(value = "/{id}/userDetails", method = RequestMethod.PUT, consumes = "application/json")
    public UserDetail putOneDetail(@RequestBody UserDetail userDetail, @PathVariable("id") Integer id) {
        return userService.saveOneDetail(id, userDetail);
    }

    @RequestMapping(value = "/{id}/receiveMessages", method = RequestMethod.GET)
    public List<Message> getAllReceiveMessages(@PathVariable("id") Integer id) {
        return userService.findAllReceiveMessagesByID(id);
    }

    @RequestMapping(value = "/{id}/sendMessages", method = RequestMethod.GET)
    public List<Message> getAllSendMessages(@PathVariable("id") Integer id) {
        return userService.findAllSendMessagesByID(id);
    }

    @RequestMapping(value = "/{id}/resumes", method = RequestMethod.PUT, consumes = "application/json")
    public Resume putOneResume(@RequestBody Resume resume, @PathVariable("id") Integer id) {
        return userService.saveOneResume(id, resume);
    }

    @RequestMapping(value = "/{id}/processes", method = RequestMethod.GET)
    public List<Process> getAllProcessesByID(@PathVariable("id") Integer id) {
        return userService.findAllProcessesByID(id);
    }

}
