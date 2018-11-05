package com.nf147.dao;

import com.nf147.entity.PetPet;
import java.util.List;

public interface PetPetMapper {
    int deleteByPrimaryKey(Integer pet_id);

    int insert(PetPet record);

    PetPet selectByPrimaryKey(Integer pet_id);

    List<PetPet> selectAll();

    int updateByPrimaryKey(PetPet record);

    List<PetPet> findByStatus(String pet_status);

    int updatePetByForm(PetPet record);

    int uploadImage(PetPet record);
}