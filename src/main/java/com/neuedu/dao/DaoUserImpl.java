package com.neuedu.dao;

import com.neuedu.pojo.Function;
import com.neuedu.pojo.Role;
import com.neuedu.pojo.User;
import com.neuedu.pojo.UserRole;
import com.neuedu.until.JdbcUntil;
import com.neuedu.until.RowMap;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class DaoUserImpl implements IUserDao {
    @Override
    public User getUser(String username) {
        return JdbcUntil.QueryOne("select * from user where username=?", new RowMap<User>() {
            @Override
            public User RowMapping(ResultSet rs) {
                User u = new User();
                try {
                    u.setUsername(rs.getString("username"));
                    u.setPassword(rs.getString("password"));
                    u.setBirthday(rs.getString("birthday"));
                    u.setTelephone(rs.getString("telephone"));
                    u.setAnswer(rs.getString("answer"));
                    u.setId(rs.getInt("id"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return u;
            }
        }, username);
    }

    @Override
    public List<Role> getRoles(User user) {
        return JdbcUntil.executeQuery("select * from u&r where u_id=? ", new RowMap<Role>() {
            @Override
            public Role RowMapping(ResultSet rs) {
                Role r = new Role();
                try {
                    r.setName(rs.getString("name"));
                    r.setId(rs.getInt("id"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return r;
            }
        }, user.getId());
    }

    @Override
    public List<Function> getFunctions(UserRole ur) {
        return JdbcUntil.executeQuery("select * from r&f where r_id=?", new RowMap<Function>() {
            @Override
            public Function RowMapping(ResultSet rs) {
                Function f = new Function();
                try {
                    f.setUrl(rs.getString("url"));
                    f.setId(rs.getInt("id"));
                    f.setName(rs.getString("name"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return f;
            }
        }, ur.getRId());
    }

    @Override
    public int insert(User user) {
        return JdbcUntil.executeUpdate("insert into user(username,password,birthday,telephone,question,answer) values(?,?,?,?,?,?)",user.getUsername(),user.getPassword(),user.getBirthday(),user.getTelephone(),user.getQuestion(),user.getAnswer());
    }

    @Override
    public int updateUser (User user) {
        return JdbcUntil.executeUpdate("update user set password=? where username=?",user.getUsername(),user.getPassword());
    }

    @Override
    public List<User> getUsers(String name) {
        return JdbcUntil.executeQuery("select * from user where username!=?", new RowMap<User>() {
            @Override
            public User RowMapping(ResultSet rs) {
                User u = new User();
                try {
                    u.setUsername(rs.getString("username"));
                    u.setPassword(rs.getString("password"));
                    u.setBirthday(rs.getString("birthday"));
                    u.setTelephone(rs.getString("telephone"));
                    u.setQuestion(rs.getString("question"));
                    u.setAnswer(rs.getString("answer"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return u;
            }
        }, name);
    }
}
