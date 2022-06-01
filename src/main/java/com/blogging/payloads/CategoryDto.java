package com.blogging.payloads;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
public class CategoryDto {
	private Integer categoryId;
	
	@NotBlank
	@Size(min = 4,message = "your title should not be less than 4 caharaters!")
	private String categoryTitle;
	
	@NotBlank
	@Size(min = 10,message = "your description should not be less 10 characters!")
	private String categoryDescription;

}




