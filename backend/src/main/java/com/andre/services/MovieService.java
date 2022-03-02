package com.andre.services;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.andre.dto.MovieDTO;
import com.andre.entities.Genre;
import com.andre.entities.Movie;
import com.andre.repositories.GenreRepository;
import com.andre.repositories.MovieRepository;
import com.andre.services.exceptions.ResourceNotFoundException;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository repository;
	
	@Autowired
	private GenreRepository genreRepository;
	
	@Transactional(readOnly = true)
	public Page<MovieDTO> findAllPaged(PageRequest pageRequest, Long genreId) {
		List<Genre> genres = (genreId == 0) ? null : Arrays.asList(genreRepository.getOne(genreId));
		Page<Movie> list = repository.find(genres, pageRequest);
		return list.map(x -> new MovieDTO(x));
	}
	
	@Transactional(readOnly = true)
	public MovieDTO findById(Long id) {
		 Optional<Movie> obj = repository.findById(id);
		 Movie movie = obj.orElseThrow(() -> new ResourceNotFoundException("Entity not found"));
		 return new MovieDTO(movie, movie.getReviews());
	}

}
