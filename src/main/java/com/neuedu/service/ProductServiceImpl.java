package com.neuedu.service;

import com.neuedu.dao.IProductDao;
import com.neuedu.dao.ProductImpl;
import com.neuedu.pojo.Product;

import java.util.List;

public class ProductServiceImpl implements IServiceProduct {
    private IProductDao dao = new ProductImpl();
    @Override
    public List<Product> getlists() {
        return dao.getlists();
    }
}
