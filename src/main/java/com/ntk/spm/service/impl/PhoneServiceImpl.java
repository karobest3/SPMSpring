package com.ntk.spm.service.impl;

import com.ntk.spm.model.Phone;
import com.ntk.spm.model.Product;
import com.ntk.spm.repository.PhoneRepository;
import com.ntk.spm.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhoneServiceImpl implements PhoneService {

    @Autowired
    private PhoneRepository phoneRepository;

    @Override
    public List<Product> findAllProduct(String brand) {
        return phoneRepository.findAllByBrandName(brand);
    }

    @Override
    public Phone findById(Long id) {
        return phoneRepository.findById(id).orElse(null);
    }

    @Override
    public void save(Phone phone) {
        phoneRepository.save(phone);
    }

    @Override
    public void remove(Long id) {
        phoneRepository.deleteById(id);
    }
}