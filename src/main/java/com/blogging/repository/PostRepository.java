package com.blogging.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.blogging.model.Category;
import com.blogging.model.Post;
import com.blogging.model.User;
import com.blogging.payloads.PostDto;

public interface PostRepository extends JpaRepository<Post, Integer>{
	
	List<Post> findByUser(User user);
	List<Post> findByCategory(Category category);
	
	@Query("select p from Post p where p.title like :key")
	List<Post> searchByTitle(@Param("key") String title);

}




