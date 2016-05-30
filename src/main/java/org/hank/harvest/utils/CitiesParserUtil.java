package org.hank.harvest.utils;

import org.hank.harvest.domain.City;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/31.
 */
public class CitiesParserUtil {

    public static Set<City> parse(String cities) {
        Set<City> cityList = new HashSet<>();
        String[] strList = cities.split(",");
        for (String str : strList) {
            if (!str.equals("")) {
                City city = new City();
                city.setName(str);
                cityList.add(city);
            }
        }
        return cityList;
    }

}
