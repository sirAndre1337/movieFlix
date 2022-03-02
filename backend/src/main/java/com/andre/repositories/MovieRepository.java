package com.andre.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.andre.entities.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long>{

}
