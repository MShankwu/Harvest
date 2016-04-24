package org.hank.harvest.utils;

import org.hank.harvest.domain.User;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/4/24.
 */
public class CurrentUserUtils {
    private static final String CURRENT_USER = "currentUser";
    private static CurrentUserUtils instance = null;

    private CurrentUserUtils() {

    }

    public static CurrentUserUtils getInstance() {
        if (instance == null) {
            synchronized (CurrentUserUtils.class) {
                if (instance == null) {
                    instance = new CurrentUserUtils();
                }
            }
        }
        return instance;
    }

    public HttpServletRequest getRequest() {
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return requestAttributes.getRequest();
    }

    public HttpSession getSession() {
        return this.getRequest().getSession(true);
    }

    public User getCurrentUser() {
        return (User) this.getSession().getAttribute(CURRENT_USER);
    }

    public void setCurrentUser(User user) {
        this.getSession().setAttribute(CURRENT_USER, user);
    }

    public void removeCurrentUser() {
        this.getSession().removeAttribute(CURRENT_USER);
    }

}
