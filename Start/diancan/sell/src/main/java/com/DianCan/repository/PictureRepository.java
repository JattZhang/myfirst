package com.DianCan.repository;

import com.DianCan.dataobject.Picture;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ZXR
 */
public interface PictureRepository extends JpaRepository<Picture, Integer> {
}
