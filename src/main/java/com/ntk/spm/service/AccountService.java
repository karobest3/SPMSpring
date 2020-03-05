package com.ntk.spm.service;

import com.ntk.spm.dto.AccountDTO;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

public interface AccountService {
   UserDetails loadUserByEmail(String email);
    List<AccountDTO> findAll();
}
