package com.DianCan.service;

import com.DianCan.dataobject.ProductCategory;

import java.util.List;

/**
 * 类目
 * Created by ZXR
 */
public interface CategoryService {

    ProductCategory findOne(Integer categoryId);

    List<ProductCategory> findAll();

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);

    ProductCategory save(ProductCategory productCategory);
}
