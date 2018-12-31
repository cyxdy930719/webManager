package com.neuedu.dao;

import com.neuedu.pojo.Function;
import com.neuedu.pojo.Role;
import com.neuedu.pojo.User;
import com.neuedu.pojo.UserRole;

import java.util.List;

public interface IUserDao {
    public User getUser(String username);
    public List<Role> getRoles(User user);
    public List<Function> getFunctions(UserRole ur);
    public int insert(User user);
    public int updateUser(User user);
    public List<User> getUsers(String name);
    public List<Role> getlists();
}
