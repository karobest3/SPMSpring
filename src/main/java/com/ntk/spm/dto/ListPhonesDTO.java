package com.ntk.spm.dto;

public class ListPhonesDTO {
    private Long id;
    private double price;
    private int quantity;
    private String screen_size;
    private String weight;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    private String battery_capacity;
    private String url;
    private String name;

    public ListPhonesDTO() {
    }

    public ListPhonesDTO(Long id,double price, int quantity, String screen_size, String weight, String battery_capacity, String url, String name) {
        this.id = id;
        this.price = price;
        this.quantity = quantity;
        this.screen_size = screen_size;
        this.weight = weight;
        this.battery_capacity = battery_capacity;
        this.url = url;
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getScreen_size() {
        return screen_size;
    }

    public void setScreen_size(String screen_size) {
        this.screen_size = screen_size;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getBattery_capacity() {
        return battery_capacity;
    }

    public void setBattery_capacity(String battery_capacity) {
        this.battery_capacity = battery_capacity;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
