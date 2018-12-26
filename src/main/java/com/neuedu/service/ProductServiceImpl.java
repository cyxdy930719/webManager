package com.neuedu.service;

import com.neuedu.dao.IProductDao;
import com.neuedu.dao.ProductImpl;
import com.neuedu.pojo.Product;
import com.neuedu.until.JdbcUntil;

import java.util.List;

public class ProductServiceImpl implements IServiceProduct {
    private IProductDao dao = new ProductImpl();
    @Override
    public List<Product> getlists() {
        return dao.getlists();
    }

    @Override
    public int insert(Product product) {
        return dao.insert(product);
    }

    @Override
    public int update(Product product) {
        return dao.update(product);
    }

    @Override
    public Product getOne(int id) {
        return dao.getOne(id);
    }
}
