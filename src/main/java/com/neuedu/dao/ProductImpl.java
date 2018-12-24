package com.neuedu.dao;

import com.neuedu.pojo.Product;
import com.neuedu.until.JdbcUntil;
import com.neuedu.until.RowMap;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProductImpl  implements IProductDao{
    @Override
    public List<Product> getlists() {
        return JdbcUntil.executeQuery("select * from product", new RowMap<Product>() {
            @Override
            public Product RowMapping(ResultSet rs) {
                Product p = new Product();
                try {
                    p.setUrl(rs.getString("url"));
                    p.setProduct_des(rs.getString("product_des"));
                    p.setPrice(rs.getDouble("price"));
                    p.setProduct_name(rs.getString("product_name"));
                    p.setStock(rs.getInt("stock"));
                    p.setProduct_id(rs.getInt("product_id"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return p;
            }
        }, null);
    }
}
