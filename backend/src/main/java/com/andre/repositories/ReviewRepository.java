package com.andre.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.andre.entities.Movie;
import com.andre.entities.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long>{

	Page<Review> findByMovie(Pageable pageable, Movie movie);
}
