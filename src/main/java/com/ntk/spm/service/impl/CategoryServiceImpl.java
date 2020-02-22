package com.ntk.spm.service.impl;

import com.ntk.spm.model.Category;
import com.ntk.spm.repository.CategoryRepository;
import com.ntk.spm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public Category findById(Long id) {
        return categoryRepository.findById(id).orElse(null);
    }

    @Override
    public void save(Category Category) {
        categoryRepository.save(Category);
    }

    @Override
    public void remove(Long id) {
        categoryRepository.deleteById(id);
    }
}
