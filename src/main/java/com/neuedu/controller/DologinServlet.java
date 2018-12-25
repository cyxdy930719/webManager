package com.neuedu.controller;
import com.neuedu.pojo.User;
import com.neuedu.service.IUserService;
import com.neuedu.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
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
                Cookie coo = new Cookie("uname",uname);
                Cookie coo1 = new Cookie("pwd",pwd);
                coo.setMaxAge(60*60*24*7);
                coo1.setMaxAge(60*60*24*7);
                resp.addCookie(coo);
                resp.addCookie(coo1);
                HttpSession session = req.getSession();
                session.setAttribute("user",user);
                /*resp.sendRedirect("list");*/
                resp.getWriter().write("1");


            }else{
                resp.getWriter().write("2");
            }
        }else{
            resp.getWriter().write("0");
        }

    }
}
