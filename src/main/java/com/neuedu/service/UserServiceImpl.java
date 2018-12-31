package com.neuedu.service;

import com.neuedu.dao.DaoUserImpl;
import com.neuedu.dao.IUserDao;
import com.neuedu.pojo.Role;
import com.neuedu.pojo.User;

import java.util.List;

public class UserServiceImpl implements IUserService {
    private IUserDao dao = new DaoUserImpl();

    @Override
    public User getUser(String username) {
        return dao.getUser(username);
    }

    @Override
    public int insert(User user) {
        return dao.insert(user);
    }

    @Override
    public int updateUser(User user) {
        return dao.updateUser(user);
    }

    @Override
    public List<User> getUsers(String name) {
        return dao.getUsers(name);
    }

    @Override
    public List<Role> getlists() {
        return dao.getlists();
    }
}
