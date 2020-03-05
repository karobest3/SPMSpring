package com.ntk.spm.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Employees")
public class Employee extends Person{
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
    @OneToMany(targetEntity = Account.class)
    List<Account> accounts;

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
