package com.blogging.services;

import com.blogging.payloads.CommentDto;

public interface CommentService {
	
	public CommentDto createComment(CommentDto commentDto,Integer postId,Integer userId);
	
	public void deleteComment(Integer commentId);
	
}




