package com.neuedu.pojo;

import lombok.Data;

@Data
public class Product extends Brand{
    private Integer product_id;
    private String product_name;
    private double price;
    private String product_des;
    private String url;
    private Integer stock;
}
