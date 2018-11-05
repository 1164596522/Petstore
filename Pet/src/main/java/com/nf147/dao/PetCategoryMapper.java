package com.nf147.dao;

import com.nf147.entity.PetCategory;
import java.util.List;

public interface PetCategoryMapper {
    int deleteByPrimaryKey(Integer category_id);

    int insert(PetCategory record);

    PetCategory selectByPrimaryKey(Integer category_id);

    List<PetCategory> selectAll();

    int updateByPrimaryKey(PetCategory record);
}