package com.haipin.service;

import com.haipin.bean.User;

public interface UserService {
    public User login(String email, String password);
    
    public User showUser(long userId);
}
