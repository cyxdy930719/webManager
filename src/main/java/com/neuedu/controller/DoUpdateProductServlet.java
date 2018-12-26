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
@WebServlet("/doupdate_product")
public class DoUpdateProductServlet extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int a = Integer.parseInt(req.getParameter("product_id"));
        String brand_name = req.getParameter("brand_name");
        String product_name = req.getParameter("product_name");
        Double price =Double.parseDouble(req.getParameter("price"));
        String product_des = req.getParameter("product_des");
        Integer stock = Integer.parseInt(req.getParameter("stock"));

        Part part = req.getPart("file");
        /*从浏览器获取上传文件请求*/
        String str = "D:\\IDeaProject\\webManager\\src\\main\\webapp\\img\\"+part.getSubmittedFileName();
        /*将文件名储存在服务器的路径*/
        File file = new File(str);
        OutputStream os = new FileOutputStream(file);

        byte[] b = new byte[1024];
        /*字节流接收文件*/
        InputStream is = part.getInputStream();
        int c = is.read(b,0,b.length);
        while(c!=-1){
            os.write(b);
            c=is.read(b,0,b.length);
        }
        String url = str.substring(str.indexOf("img"));

        /*new product对象*/
        Product p = new Product();
        p.setUrl(url);
        p.setProduct_id(a);
        p.setStock(stock);
        p.setBrand_name(brand_name);
        p.setProduct_name(product_name);
        p.setPrice(price);
        p.setProduct_des(product_des);
        service.update(p);
        resp.sendRedirect("list1");

    }
}
