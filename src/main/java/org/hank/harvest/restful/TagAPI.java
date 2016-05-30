package org.hank.harvest.restful;

import org.hank.harvest.domain.Tag;
import org.hank.harvest.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@RestController
@RequestMapping("/api/1/tags")
public class TagAPI {

    private TagService tagService;

    @Autowired
    public void setTagService(TagService tagService) {
        this.tagService = tagService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public List<Tag> getTopRating(Integer topNum) {
        return tagService.findTopRating(topNum);
    }

}
