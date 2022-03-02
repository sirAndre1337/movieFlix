package com.andre.dto;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import com.andre.entities.Review;

public class ReviewDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;

	@NotEmpty(message = "Review deve ser preenchido")
	private String text;
	
	private Long userId;
	
	private Long movieId;
	
	private String nameUser;

	public ReviewDTO() {
	}

	public ReviewDTO(Long id, String text, Long userId, Long movieId) {
		super();
		this.id = id;
		this.text = text;
		this.userId = userId;
		this.movieId = movieId;
	}

	public ReviewDTO(Review entity) {
		id = entity.getId();
		text = entity.getText();
		userId = entity.getUser().getId();
		movieId = entity.getMovie().getId();
		nameUser = entity.getUser().getName();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Long getUserId() {
		return userId;
	}
	
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public Long getMovieId() {
		return movieId;
	}
	
	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}
	
	public String getNameUser() {
		return nameUser;
	}
	
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}
}
