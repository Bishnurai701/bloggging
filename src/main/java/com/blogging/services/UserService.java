package com.blogging.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blogging.payloads.UserDto;


public interface UserService {
	
 UserDto createUser(UserDto user);
 
 UserDto updateUser(UserDto user,Integer userId);
 
 UserDto getUserById(Integer userId);
 
 List<UserDto> getAllusers();
 
 void deleteUser(Integer userId);
}




