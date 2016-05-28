package org.hank.harvest.restful;

import org.hank.harvest.domain.Message;
import org.hank.harvest.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Administrator on 2016/5/28.
 */
@RestController
@RequestMapping("/api/1/messages")
public class MessageAPI {

    private MessageService messageService;

    @Autowired
    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Message getOne(@PathVariable("id") Integer id) {
        return messageService.findOne(id);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = "application/json")
    public Integer postOne(@RequestBody Message message) {
        return messageService.saveOne(message);
    }

}
