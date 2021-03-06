package com.DianCan.service;

import com.DianCan.dataobject.SellerInfo;

/**
 * 卖家端
 *Created by ZXR
 */
public interface SellerService {

    /**
     * 通过openid查询卖家端信息
     * @return
     */
    SellerInfo findSellerInfoByPhone(String phone);
}
