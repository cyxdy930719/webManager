package com.neuedu.service;

import com.neuedu.pojo.User;

public interface IUserService {
    public User getUser(String username);
    public int insert(User user);
    public int updateUser(User user);
}
