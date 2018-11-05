package com.nf147.dao;

import com.nf147.entity.PetTag;
import java.util.List;

public interface PetTagMapper {
    int deleteByPrimaryKey(Integer tag_id);

    int insert(PetTag record);

    PetTag selectByPrimaryKey(Integer tag_id);

    List<PetTag> selectAll();

    int updateByPrimaryKey(PetTag record);
}