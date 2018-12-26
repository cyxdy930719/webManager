package com.neuedu.controller;

import com.neuedu.pojo.Product;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

@MultipartConfig
@WebServlet("/doadd")
public class DoAdd extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product_name =req.getParameter("product_id");
        String brand_name = req.getParameter("brand_name");
        Double price = Double.parseDouble(req.getParameter("price"));
        String product_des = req.getParameter("product_des");
        int stock = Integer.parseInt(req.getParameter("stock"));

        Part part = req.getPart("file");
        String str = "D:\\IDeaProject\\webManager\\src\\main\\webapp\\img\\"+part.getSubmittedFileName();
        File file = new File(str);
        InputStream is = part.getInputStream();
        byte[] b= new byte[1024];
        int a =is.read(b,0,b.length);
        OutputStream os = new FileOutputStream(file);
        while(a!=-1){
            os.write(b);
            a=is.read(b,0,b.length);
        }
        String url=str.substring(str.indexOf("img"));





        Product p = new Product();
        p.setUrl(url);
        p.setBrand_name(brand_name);
        p.setProduct_name(product_name);
        p.setPrice(price);
        p.setProduct_des(product_des);
        p.setStock(stock);
        service.insert(p);
        req.getRequestDispatcher("WEB-INF/pages/list1.jsp").forward(req,resp);
    }
}
