package com.nf147.controller;

import com.nf147.dao.PetOrderMapper;
import com.nf147.entity.PetOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


public class StoreController {

    @Autowired
    private PetOrderMapper petOrderMapper;

    @RequestMapping(method = RequestMethod.GET, value = "/store/inventory")
    @ResponseBody
    public String stateQueryInventory(String order_status){
        petOrderMapper.stateQueryInventory(order_status);
        return "";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/store/order")
    @ResponseBody
    public String addOrder(PetOrder order){
        petOrderMapper.insert(order);
        return "";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/store/order/{orderId}")
    @ResponseBody
    public String getId(@PathVariable int orderId){
        petOrderMapper.selectByPrimaryKey(orderId);
        return "";
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/store/order/{orderId}")
    @ResponseBody
    public String delById(@PathVariable int orderId){
        petOrderMapper.deleteByPrimaryKey(orderId);
        return "";
    }

}
