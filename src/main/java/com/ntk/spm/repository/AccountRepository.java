package com.ntk.spm.repository;

import com.ntk.spm.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account,Long> {
        Account findAllByEmail(String email);
}
