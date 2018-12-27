package com.neuedu.controller;

import com.neuedu.pojo.Brand;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/brandoperating")
public class BrandOperating extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Brand> brands = service.getBrands();
        req.setAttribute("brands",brands);
        req.getRequestDispatcher("WEB-INF/pages/brand.jsp").forward(req,resp);
    }
}
