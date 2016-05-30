package org.hank.harvest.utils;

/**
 * Created by Administrator on 2016/5/19.
 */
public class JobConditionUtil {

    public static final String[] JOB_CHOICES_IDS = new String[]{
            "salary", "experience", "graduation", "category"
    };
    public static final String[] JOB_CHOICES = new String[]{
            "薪资范围", "工作经验", "最低学历", "工作性质"
    };
    public static final String[][] JOB_CHOICES_CONTENTS = new String[][]{{
            "2K以下", "2K-5K", "5K-10K", "10K-15K", "15K-25K", "25K-50K", "50K以上"
    }, {
            "不限", "应届毕业生", "1年以下", "1-3年", "3-5年", "5-10年", "10年以上"
    }, {
            "不限", "大专", "本科", "硕士", "博士"
    }, {
            "全职", "兼职", "实习"
    }
    };
    private Integer originSalary = 0;
    private Integer terminalSalary = 100;
    private String experience;
    private String graduation;
    private String category;
    private String keyword;

    public JobConditionUtil(Integer salaryID, Integer experienceID, Integer graduationID, Integer categoryID, String keyword) {
        if (salaryID != null) {
            switch (salaryID) {
                case 0:
                    this.terminalSalary = 2;
                    break;
                case 1:
                    this.originSalary = 3;
                    this.terminalSalary = 5;
                    break;
                case 2:
                    this.originSalary = 6;
                    this.terminalSalary = 10;
                    break;
                case 3:
                    this.originSalary = 11;
                    this.terminalSalary = 15;
                    break;
                case 4:
                    this.originSalary = 16;
                    this.terminalSalary = 25;
                    break;
                case 5:
                    this.originSalary = 26;
                    break;
                default:
                    break;
            }
        }
        this.experience = experienceID != null ? JOB_CHOICES_CONTENTS[1][experienceID] : null;
        this.graduation = graduationID != null ? JOB_CHOICES_CONTENTS[2][graduationID] : null;
        this.category = categoryID != null ? JOB_CHOICES_CONTENTS[3][categoryID] : null;
        this.keyword = keyword;
    }

    public Integer getOriginSalary() {
        return originSalary;
    }

    public void setOriginSalary(Integer originSalary) {
        this.originSalary = originSalary;
    }

    public Integer getTerminalSalary() {
        return terminalSalary;
    }

    public void setTerminalSalary(Integer terminalSalary) {
        this.terminalSalary = terminalSalary;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

}
