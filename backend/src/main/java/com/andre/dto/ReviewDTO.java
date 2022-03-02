package com.andre.dto;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import com.andre.entities.Review;

public class ReviewDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;

	@NotEmpty(message = "Review deve ser preenchido")
	private String text;
	
	private UserDTO userDTO;

	public ReviewDTO() {
	}

	public ReviewDTO(Long id, String text, UserDTO userDTO) {
		super();
		this.id = id;
		this.text = text;
		this.userDTO = userDTO;
	}

	public ReviewDTO(Review entity) {
		id = entity.getId();
		text = entity.getText();
		userDTO = new UserDTO(entity.getUser());
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

	public UserDTO getUserDTO() {
		return userDTO;
	}

	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}

}
