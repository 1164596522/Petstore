package com.nf147.dao;

import com.nf147.entity.PetUser;
import java.util.List;

public interface PetUserMapper {
    int deleteByPrimaryKey(String user_id);

    int insert(PetUser record);

    PetUser selectByPrimaryKey(Integer user_id);

    int updateByPrimaryKey(PetUser record);

    int updateStatus(PetUser petUser);

    PetUser selectByName(String username);

    List<PetUser> selectAll();
}