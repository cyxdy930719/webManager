package com.neuedu.dao;

import com.neuedu.pojo.Brand;
import com.neuedu.pojo.Product;
import com.neuedu.until.JdbcUntil;
import com.neuedu.until.RowMap;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProductImpl  implements IProductDao{
    @Override
    public List<Product> getlists() {
        return JdbcUntil.executeQuery("select * from brand inner join product on product.brand_id=brand.brand_id order by product_id", new RowMap<Product>() {
            @Override
            public Product RowMapping(ResultSet rs) {
                Product p = new Product();
                try {
                    p.setBrand_name(rs.getString("brand_name"));
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
    public int update(Product product) {
        return JdbcUntil.executeUpdate("update product set product_name=?,price=?,product_des=?,url=?,stock=? where product_id=?",product.getProduct_name(),product.getPrice(),product.getProduct_des(),product.getUrl(),product.getStock(),product.getProduct_id());
    }

    @Override
    public Product getOne(int id) {
        return JdbcUntil.QueryOne("select * from product,brand where product.brand_id=brand.brand_id and product_id=?", new RowMap<Product>() {
            @Override
            public Product RowMapping(ResultSet rs) {
                Product p = new Product();
                try {
                    p.setProduct_id(rs.getInt("product_id"));
                    p.setProduct_des(rs.getString("product_des"));
                    p.setPrice(rs.getDouble("price"));
                    p.setProduct_name(rs.getString("product_name"));
                    p.setUrl(rs.getString("url"));
                    p.setStock(rs.getInt("stock"));
                    p.setBrand_name(rs.getString("brand_name"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return p;
            }
        }, id);
    }
}
