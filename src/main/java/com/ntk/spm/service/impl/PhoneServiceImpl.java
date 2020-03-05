package com.ntk.spm.service.impl;

import com.ntk.spm.dto.ListPhonesDTO;
import com.ntk.spm.model.Phone;
import com.ntk.spm.repository.PhoneRepository;
import com.ntk.spm.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class PhoneServiceImpl implements PhoneService {

    @Autowired
    private PhoneRepository phoneRepository;

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

    @Override
    public Page<ListPhonesDTO> findProduct(String brand, String search, Pageable pageable) {
        Page<Phone> listPhones = phoneRepository.findAllByBrandNameAndNameContainingAndActiveIsTrue(brand, search, pageable);
        Page<ListPhonesDTO> listPhonesDTO = listPhones.map(phone -> {
            ListPhonesDTO PhonesDTO = new ListPhonesDTO(phone.getId(),phone.getPrice(), phone.getQuantity(), phone.getScreen_size(), phone.getWeight(), phone.getBattery_capacity(), phone.getUrl(), phone.getName());
            return PhonesDTO;
        });
        return  listPhonesDTO;
    }


}