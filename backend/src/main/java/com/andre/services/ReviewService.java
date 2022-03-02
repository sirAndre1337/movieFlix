package com.andre.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.andre.dto.ReviewDTO;
import com.andre.entities.Movie;
import com.andre.entities.Review;
import com.andre.entities.User;
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

	@Transactional
	public ReviewDTO saveReview(ReviewDTO dto) {
		
		Review review = new Review();
		User user = new User();
		Movie movie = new Movie();
		
		user.setId(dto.getUserId());
		movie.setId(dto.getMovieId());
		
		review.setMovie(movie);
		review.setText(dto.getText());
		review.setUser(user);
		
		review = repository.save(review);
		return new ReviewDTO(review);
	}

}