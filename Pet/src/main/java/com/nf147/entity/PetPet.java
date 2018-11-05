package com.nf147.entity;

public class PetPet {
    private Integer pet_id;

    private Integer pet_category;

    private String pet_name;

    private Integer pet_tags;

    private String photo_urls;

    private String pet_status;

    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

    public Integer getPet_category() {
        return pet_category;
    }

    public void setPet_category(Integer pet_category) {
        this.pet_category = pet_category;
    }

    public String getPet_name() {
        return pet_name;
    }

    public void setPet_name(String pet_name) {
        this.pet_name = pet_name == null ? null : pet_name.trim();
    }

    public Integer getPet_tags() {
        return pet_tags;
    }

    public void setPet_tags(Integer pet_tags) {
        this.pet_tags = pet_tags;
    }

    public String getPhoto_urls() {
        return photo_urls;
    }

    public void setPhoto_urls(String photo_urls) {
        this.photo_urls = photo_urls == null ? null : photo_urls.trim();
    }

    public String getPet_status() {
        return pet_status;
    }

    public void setPet_status(String pet_status) {
        this.pet_status = pet_status == null ? null : pet_status.trim();
    }
}