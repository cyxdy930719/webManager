package com.neuedu.service;

import com.neuedu.dao.IProductDao;
import com.neuedu.dao.ProductImpl;
import com.neuedu.pojo.Brand;
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

    @Override
    public List<Brand> getBrands() {
        return dao.getBrands();
    }

    @Override
    public int delete(int id) {
        return dao.delete(id);
    }

    @Override
    public int insert(Brand brand) {
        return dao.insert(brand);
    }

    @Override
    public int deleteBrand(int id) {
        return dao.deleteBrand(id);
    }

    @Override
    public int update(Brand brand) {
        return dao.update(brand);
    }


}
