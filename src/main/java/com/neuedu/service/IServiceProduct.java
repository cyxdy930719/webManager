package com.neuedu.service;

import com.neuedu.pojo.Brand;
import com.neuedu.pojo.Product;

import java.util.List;

public interface IServiceProduct {
    public List<Product> getlists();
    public int insert(Product product);
    public int update(Product product);
    public Product getOne(int id);
    public List<Brand> getBrands();
    public int delete(int id);
    public int insert(Brand brand);
    public int deleteBrand(int id);
    public int update(Brand brand);
    public Brand getOnes(int id);

}
