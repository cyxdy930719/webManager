package com.neuedu.service;

import com.neuedu.pojo.Product;

import java.util.List;

public interface IServiceProduct {
    public List<Product> getlists();
    public int insert(Product product);
    public int update(Product product);
    public Product getOne(int id);
}
