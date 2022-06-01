package com.blogging.services.Impl;


import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogging.exceptions.ResourceNotFoundException;
import com.blogging.model.Comment;
import com.blogging.model.Post;
import com.blogging.model.User;
import com.blogging.payloads.CommentDto;
import com.blogging.repository.CommentRepository;
import com.blogging.repository.PostRepository;
import com.blogging.repository.UserRepository;
import com.blogging.services.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private UserRepository uerRepository;
	
	@Autowired
	private CommentRepository commentRepository;
	
	@Autowired
	private ModelMapper modelMapper;

	@Override
	public CommentDto createComment(CommentDto commentDto, Integer postId,Integer userId) {
		
		Post post=this.postRepository.findById(postId).orElseThrow(()-> new ResourceNotFoundException("Post", "postId", postId));
		
		User user=this.uerRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException("User", "userId", userId));
		
		Comment comment = this.modelMapper.map(commentDto, Comment.class);
		
		comment.setPost(post);
		comment.setUser(user);
		
		Comment savedComment = this.commentRepository.save(comment);
		
		return this.modelMapper.map(savedComment, CommentDto.class);
	}

	@Override
	public void deleteComment(Integer commentId) {

		Comment comment=this.commentRepository.findById(commentId).orElseThrow(()-> new ResourceNotFoundException("Comment", "commentId", commentId));
		this.commentRepository.delete(comment);
	}
}




