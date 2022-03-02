package com.andre.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.andre.entities.Genre;
import com.andre.entities.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long>{
	
	@Query("SELECT DISTINCT obj FROM Movie  obj INNER JOIN obj.genres gens WHERE "
			+ "(COALESCE(:genres) IS NULL OR gens IN :genres) ")
	Page<Movie> find(List<Genre> genres, Pageable pageable);
}
