package com.ntk.spm.model;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@MappedSuperclass

public abstract class Product {

    @Column(name = "name")
//    @NotBlank(message = "ngu hoc")
    @Pattern(regexp = "^[a]", message = "KO chay duoc la thang hai ngu")
    private String name;
    @Column(name = "price")
    private double price;
    @Column(name = "description")
    @NotBlank(message = "oc cho")
    private String description;
    @Column(name = "url")
    @Pattern(regexp = "^[a]", message = "KO chay duoc la thang hai ngu")
    private String url;
    @Column(name = "url_details")
    private String url_details;
    @Column(name = "url_more")
    private String url_more;

    public String getUrl_more() {
        return url_more;
    }

    public void setUrl_more(String url_more) {
        this.url_more = url_more;
    }

    @Column(name = "active")
    private boolean active;

    public String getUrl_details() {
        return url_details;
    }

    public void setUrl_details(String url_details) {
        this.url_details = url_details;
    }
    @Column(name = "screen_size")
    private String screen_size;

    @Column(name = "screen_resolution")
    private String screen_resolution;
    @Column(name = "screen_technology")
    private String screen_technology;
    @Column(name = "screen_touch")
    private String screen_touch;
    @Column(name = "operating_system")
    private String operating_system;
    @Column(name = "battery_type")
    private String battery_type;
    @Column(name = "battery_capacity")
    private String battery_capacity;
    @Column(name = "battery_technology")
    private String battery_technology;
    @Column(name = "size")
    private String size;
    @Column(name = "weight")
    private String weight;
    @Column(name = "material")
    private String material;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Column(name = "time_of_launch")
    private String time_of_launch;
    @Column(name = "ram")
    private String ram;
    @Column(name = "quantity")
    private int quantity;
    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public Product() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getScreen_size() {
        return screen_size;
    }

    public void setScreen_size(String screen_size) {
        this.screen_size = screen_size;
    }

    public String getScreen_technology() {
        return screen_technology;
    }

    public void setScreen_technology(String screen_technology) {
        this.screen_technology = screen_technology;
    }

    public String getScreen_touch() {
        return screen_touch;
    }

    public void setScreen_touch(String screen_touch) {
        this.screen_touch = screen_touch;
    }

    public String getOperating_system() {
        return operating_system;
    }

    public void setOperating_system(String operating_system) {
        this.operating_system = operating_system;
    }

    public String getBattery_type() {
        return battery_type;
    }

    public void setBattery_type(String battery_type) {
        this.battery_type = battery_type;
    }

    public String getBattery_capacity() {
        return battery_capacity;
    }

    public void setBattery_capacity(String battery_capacity) {
        this.battery_capacity = battery_capacity;
    }

    public String getBattery_technology() {
        return battery_technology;
    }

    public void setBattery_technology(String battery_technology) {
        this.battery_technology = battery_technology;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getTime_of_launch() {
        return time_of_launch;
    }

    public void setTime_of_launch(String time_of_launch) {
        this.time_of_launch = time_of_launch;
    }
    public String getScreen_resolution() {
        return screen_resolution;
    }

    public void setScreen_resolution(String screen_resolution) {
        this.screen_resolution = screen_resolution;
    }
}