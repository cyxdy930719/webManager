package com.neuedu.controller;
import com.neuedu.pojo.User;
import com.neuedu.service.IUserService;
import com.neuedu.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/dologin")
public class DologinServlet extends HttpServlet {
    private IUserService service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname= req.getParameter("uname");
        String pwd = req.getParameter("pwd");
        User user = service.getUser(uname);
        if (user!=null){
            if (pwd.equals(user.getPassword())){
                resp.getWriter().write("1");
            }else{
                resp.getWriter().write("2");
            }
        }else{
            resp.getWriter().write("0");
        }

    }
}
