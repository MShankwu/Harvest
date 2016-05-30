package org.hank.harvest.utils;

import org.hank.harvest.domain.Tag;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/5/30.
 */
public class TagsParserUtil {

    public static List<Tag> parse(String tags) {
        List<Tag> tagList = new ArrayList<>();
        String[] strList = tags.split(",");
        for (String str : strList) {
            if (!str.equals("")) {
                Tag tag = new Tag();
                tag.setName(str);
                tagList.add(tag);
            }
        }
        return tagList;
    }

}
