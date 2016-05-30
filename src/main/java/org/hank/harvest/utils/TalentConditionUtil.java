package org.hank.harvest.utils;

/**
 * Created by Administrator on 2016/5/22.
 */
public class TalentConditionUtil {

    public static final String[] TALENT_CHOICES_IDS = new String[] {
            "authority", "category", "experience", "type", "graduation"
    };
    public static final String[] TALENT_CHOICES = new String[] {
            "角色", "求职职位性质", "工作经验", "求职类别", "学历"
    };
    public static final String[][] TALENT_CHOICES_CONTENTS = new String[][] {{
            "求职者", "招聘者"
    }, {
            "找全职", "找兼职", "找实习"
    }, {
            "应届毕业生", "1年以下", "1-3年", "3-5年", "5-10年", "10年以上"
    }, {
            "校招", "社招"
    }, {
            "大专", "本科", "硕士", "博士"
    }
    };
    private String authority;
    private String category;
    private String experience;
    private String type;
    private String graduation;
    private String keyword;

    public TalentConditionUtil(Integer authorityID, Integer categoryID,
                               Integer experienceID, Integer typeID,
                               Integer graduationID, String keyword) {
        this.authority = authorityID != null? TALENT_CHOICES_CONTENTS[0][authorityID] : null;
        this.category = categoryID != null? TALENT_CHOICES_CONTENTS[1][categoryID] : null;
        this.experience = experienceID != null? TALENT_CHOICES_CONTENTS[2][experienceID] : null;
        this.type = typeID != null? TALENT_CHOICES_CONTENTS[3][typeID] : null;
        this.graduation = graduationID != null ? TALENT_CHOICES_CONTENTS[4][graduationID] : null;
        this.keyword = keyword;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

}
