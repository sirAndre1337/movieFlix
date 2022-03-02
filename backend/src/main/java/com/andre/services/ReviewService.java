package com.andre.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.andre.dto.ReviewDTO;
import com.andre.entities.Review;
import com.andre.repositories.ReviewRepository;

@Service
public class ReviewService {

	@Autowired
	private ReviewRepository repository;
	
	@Transactional(readOnly = true)
	public Page<ReviewDTO> findAllPaged(PageRequest pageRequest) {
		Page<Review> list = repository.findAll(pageRequest);
		return list.map(x -> new ReviewDTO(x));
	}
}
