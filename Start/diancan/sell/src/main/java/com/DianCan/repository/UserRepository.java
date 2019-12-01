package com.DianCan.repository;

import com.DianCan.dataobject.User;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ZXR
 */
public interface UserRepository extends JpaRepository<User, String> {
    User findByOpenid(String openid);
}
