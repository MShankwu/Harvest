package org.hank.harvest.utils;

/**
 * Created by Administrator on 2016/5/21.
 */
public class CompanyConditionUtil {

    public static final String[] TYPES = new String[] {
            "移动互联网", "电子商务", "金融", "企业服务", "教育", "文化娱乐", "游戏", "O2O",
            "硬件", "医疗健康", "生活服务", "广告销售", "旅游", "数据服务", "社交服务", "社交网络",
            "分类信息", "信息安全", "招聘"
    };
    private String type;
    private String keyword;

    public CompanyConditionUtil(Integer typeID, String keyword) {
        this.type = typeID != null ? TYPES[typeID] : null;
        this.keyword = keyword;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
