package com.haipin.dao;

import com.haipin.bean.User;

public interface UserDAO {
	int deleteByPrimaryKey(Long id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Long userId);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	User findByEmail(String email);

}