package com.blogging.payloads;

import java.util.HashSet;
import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UserDto {
	
	private int user_id;
	
	@NotEmpty
	@Size(min = 4,message="user name must be min 4 charactores!")
	private String name;
	
	@Email(message = "Your email is not valid")
	private String email;
	
	@NotEmpty
	@Size(min = 6,max = 10, message = "Password must be min 6 chars abd max of 10 chars")
	private String password;
	
	@NotEmpty
	private String about;
	
	
	private Set<RoleDto> roles=new HashSet<>();

}




