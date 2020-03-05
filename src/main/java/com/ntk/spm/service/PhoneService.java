package com.ntk.spm.service;

import com.ntk.spm.dto.ListPhonesDTO;
import com.ntk.spm.model.Phone;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Pageable;

@Service
public interface PhoneService {
    Phone findById(Long id);

    void save(Phone phone);

    void remove(Long id);

    Page<ListPhonesDTO> findProduct(String brand, String search, Pageable pageable);

}