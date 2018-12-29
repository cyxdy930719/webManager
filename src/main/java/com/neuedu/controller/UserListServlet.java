package com.neuedu.controller;

import com.neuedu.pojo.Product;
import com.neuedu.pojo.User;
import com.neuedu.service.UserServiceImpl;
import com.neuedu.until.CookieUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/userlist")
public class UserListServlet extends HttpServlet {
    private UserServiceImpl service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        Map<String,Cookie> maps = CookieUntil.getCookie(cookies);
        Cookie coo = maps.get("uname");
        String name = coo.getValue();
        List<User> lists = service.getUsers(name);
        req.setAttribute("users",lists);
        System.out.println(name);
        req.getRequestDispatcher("WEB-INF/pages/userlist.jsp").forward(req,resp);
    }
}
