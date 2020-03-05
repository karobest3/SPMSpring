package com.ntk.spm.repository;


import com.ntk.spm.model.Phone;
import com.ntk.spm.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PhoneRepository extends JpaRepository<Phone,Long> {

    Page<Phone> findAllByBrandNameAndNameContainingAndActiveIsTrue(String name,String search,Pageable pageable);

}