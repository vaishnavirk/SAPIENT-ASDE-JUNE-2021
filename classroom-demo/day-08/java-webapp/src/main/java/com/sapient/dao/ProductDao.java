package com.sapient.dao;

import java.util.List;

import com.sapient.entity.Product;

public interface ProductDao {
    public List<Product> getAllProducts() throws DaoException;
}
