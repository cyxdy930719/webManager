package com.neuedu.service;

import com.neuedu.pojo.User;

import java.util.List;

public interface IUserService {
    public User getUser(String username);
    public int insert(User user);
    public int updateUser(User user);
    public List<User> getUsers(String name);
}
