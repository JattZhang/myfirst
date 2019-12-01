package com.DianCan.repository;

import com.DianCan.dataobject.SellerInfo;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ZXR
 */
public interface SellerInfoRepository extends JpaRepository<SellerInfo, Integer> {
    SellerInfo findByPhone(String phone);

    SellerInfo findBySellerId(Integer sellerId);
}
