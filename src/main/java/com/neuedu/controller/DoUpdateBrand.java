package com.neuedu.controller;

import com.neuedu.pojo.Brand;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/doupdate_brand")
public class DoUpdateBrand extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bname = req.getParameter("bname");
        String bdes = req.getParameter("bdes");
        Brand b = new Brand();
        b.setBrand_name(bname);
        b.setBrand_des(bdes);
        service.insert(b);
        resp.sendRedirect("brandoperating");
    }
}
