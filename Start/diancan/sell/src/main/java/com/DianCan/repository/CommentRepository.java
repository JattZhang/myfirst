package com.DianCan.repository;

import com.DianCan.dataobject.Comment;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by ZXR
 * desc:
 */
public interface CommentRepository extends JpaRepository<Comment, Integer> {
    List<Comment> findAllByOpenid(String openid);
}
