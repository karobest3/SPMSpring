package com.ntk.spm.repository;


import com.ntk.spm.model.Phone;
import com.ntk.spm.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PhoneRepository extends JpaRepository<Phone,Long> {
//    @Query("Select p from Phone p inner join Brand b on b.id = p.brand.id where  b.name = :brand")
//    List<Product> findAllProduct(@Param("brand") String brand);
    List<Product> findAllByBrandName(String name);
}