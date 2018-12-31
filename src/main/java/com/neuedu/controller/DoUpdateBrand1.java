package com.neuedu.controller;

import com.neuedu.pojo.Brand;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/doupdate1_brand")
public class DoUpdateBrand1 extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("bno"));
        String name = req.getParameter("bname");
        String des = req.getParameter("bdes");
        Brand b = new Brand();
        b.setBrand_id(id);
        b.setBrand_name(name);
        b.setBrand_des(des);
        service.update(b);
        resp.sendRedirect("brandoperating");
    }
}
