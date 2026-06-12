package com.academy2026.service;

import com.academy2026.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private List<Product> products;

    public ProductService() {

        products = new ArrayList<>();

        Product product1 = new Product(1, "Mouse", 1000);
        Product product2 = new Product(2, "Keyboard", 2000);
        Product product3 = new Product(3, "Laptop", 10000);

        products.add(product1);
        products.add(product2);
        products.add(product3);
    }

    public List<Product> getProducts() {
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
