package com.nf147.dao;

import com.nf147.entity.PetOrder;
import java.util.List;

public interface PetOrderMapper {
    int deleteByPrimaryKey(Integer order_id);

    int insert(PetOrder record);

    PetOrder selectByPrimaryKey(Integer order_id);

    List<PetOrder> stateQueryInventory(String order_status);

    int updateByPrimaryKey(PetOrder record);
}