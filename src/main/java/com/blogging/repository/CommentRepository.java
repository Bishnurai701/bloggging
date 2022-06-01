package com.blogging.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blogging.model.Comment;


public interface CommentRepository extends JpaRepository<Comment, Integer> {
	

}




