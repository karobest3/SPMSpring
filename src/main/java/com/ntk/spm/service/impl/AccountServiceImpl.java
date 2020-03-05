package com.ntk.spm.service.impl;

import com.ntk.spm.model.Account;
import com.ntk.spm.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
public class AccountServiceImpl implements UserDetailsService {
    @Autowired
    AccountRepository accountRepository;
    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = accountRepository.findAllByEmail(username);
        if (account == null) {
            throw new UsernameNotFoundException("User not found with email: " + username);
        }
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
//        Set<Role> roles = user.getRoles();
//        for(Role role: roles){
            grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
//        }
        return new org.springframework.security.core.userdetails.User("KIEN", "123",
                grantedAuthorities);
    }
}
