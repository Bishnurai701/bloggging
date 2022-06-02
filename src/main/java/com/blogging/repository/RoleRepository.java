package com.blogging.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogging.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {

}




