package com.academy2026.service;

import com.academy2026.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private List<Product> products;

    public ProductService() {
        products = new ArrayList<>();
        Product product = new Product(1, "Mouse", 1000);
        products.add(product);
    }

    public List<Product> getBooks() {
        return products;
    }

    public Product getProduct(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }
}
