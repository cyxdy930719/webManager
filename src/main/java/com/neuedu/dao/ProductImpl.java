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

    @Override
    public int insert(Product product) {
        return JdbcUntil.executeUpdate("insert into product(product_id,product_name,price,product_desc,url,stock) values(?,?,?,?,?,?)",product.getProduct_id(),product.getProduct_name(),product.getPrice(),product.getProduct_des(),product.getUrl(),product.getStock());
    }

    @Override
    public int delete(int id) {
        return JdbcUntil.executeUpdate("delete from product where product_id=?",id);
    }

    @Override
    public int update(int id) {
        return JdbcUntil.executeUpdate("update from product where product_id=?",id);
    }
}
