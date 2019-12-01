package com.DianCan.service;

import com.DianCan.dataobject.User;

/**
 * 用户端
 * Created by ZXR
 */
public interface UserService {

    /**
     * 通过openid查询用户信息
     *
     * @param openid
     * @return
     */
    User findByOpenid(String openid);
}
