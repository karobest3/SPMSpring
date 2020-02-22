package com.ntk.spm.service;

import com.ntk.spm.model.Brand;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BrandService {
    List<Brand> findAll();

    Brand findById(Long id);

    void save(Brand brand);

    void remove(Long id);
}
