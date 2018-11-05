package com.nf147.entity;

import java.util.Date;

public class PetOrder {
    private Integer order_id;

    private Integer pet_id;

    private Integer order_quantity;

    private Date order_shipDate;

    private String order_status;

    private byte[] order_complete;

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

    public Integer getOrder_quantity() {
        return order_quantity;
    }

    public void setOrder_quantity(Integer order_quantity) {
        this.order_quantity = order_quantity;
    }

    public Date getOrder_shipDate() {
        return order_shipDate;
    }

    public void setOrder_shipDate(Date order_shipDate) {
        this.order_shipDate = order_shipDate;
    }

    public String getOrder_status() {
        return order_status;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status == null ? null : order_status.trim();
    }

    public byte[] getOrder_complete() {
        return order_complete;
    }

    public void setOrder_complete(byte[] order_complete) {
        this.order_complete = order_complete;
    }
}