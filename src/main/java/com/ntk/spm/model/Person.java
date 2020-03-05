package com.ntk.spm.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass

public abstract class Person {
    @Column(name = "name")
    private String name;
    @Column(name = "address")
    private String address;
    @Column(name = "id_card")
    private String id_card;
    @Column(name = "phone")
    private String phone;
    @Column(name = "birthday")
    private String birthday;
    @Column(name = "active")
    private boolean active;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
