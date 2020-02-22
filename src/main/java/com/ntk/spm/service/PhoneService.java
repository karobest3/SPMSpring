package com.ntk.spm.service;

import com.ntk.spm.model.Phone;
import com.ntk.spm.model.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PhoneService {
    List<Product> findAllProduct(String brand);

    Phone findById(Long id);

    void save(Phone phone);

    void remove(Long id);


}