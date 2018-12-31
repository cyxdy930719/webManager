package com.neuedu.controller;

import com.neuedu.pojo.User;
import com.neuedu.service.UserServiceImpl;
import com.neuedu.until.CookieUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/updateuser")
public class UpdateUserServlet extends HttpServlet {
    private UserServiceImpl service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] coo = req.getCookies();
        Map<String,Cookie> maps = CookieUntil.getCookie(coo);
        Cookie cookie = maps.get("uname");
        String name = cookie.getValue();
        User u = service.getUser(name);
        req.setAttribute("u",u);
        req.getRequestDispatcher("WEB-INF/pages/changepwd.jsp").forward(req,resp);
    }
}
