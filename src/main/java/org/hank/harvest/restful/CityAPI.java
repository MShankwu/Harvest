package org.hank.harvest.restful;

import org.hank.harvest.domain.City;
import org.hank.harvest.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/19.
 */
@RestController
@RequestMapping("/api/1/cities")
public class CityAPI {

    private CityService cityService;

    @Autowired
    public void setCityService(CityService cityService) {
        this.cityService = cityService;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public City getOne(@PathVariable("id") Integer id) {
        return cityService.findOne(id);
    }

}
