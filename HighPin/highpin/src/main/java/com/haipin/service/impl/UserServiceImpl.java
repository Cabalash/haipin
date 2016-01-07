package com.haipin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.w3c.dom.css.ElementCSSInlineStyle;

import com.haipin.bean.User;
import com.haipin.dao.UserDAO;
import com.haipin.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDAO userDao;

	@Override
	public User login(String email, String password) {
		User user = userDao.findByEmail(email);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				user.setIsLegal(true);
			} else {
				user.setIsLegal(false);
			}
		}

		return user;
	}

	@Override
    public User showUser(long userId) {
		User user = userDao.selectByPrimaryKey(userId);
    	return user;
    }

}
