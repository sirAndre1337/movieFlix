package com.andre.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.andre.entities.Movie;
import com.andre.entities.Review;

public class MovieDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;

	@Size(min = 2, max = 20, message = "Titulo deve conter entre 2 e 20 caracteres")
	@NotBlank(message = "Campo requerido")
	private String title;

	@Size(min = 2, max = 20, message = "subTitulo deve conter entre 2 e 20 caracteres")
	private String subTitle;

	@NotBlank(message = "Campo requerido")
	private Integer year;

	@NotBlank(message = "Campo requerido")
	private String imgUrl;

	@NotBlank(message = "Campo requerido")
	private String synopsis;

	@NotEmpty(message = "Filme sem genero não é permitido")
	private Set<GenreDTO> genres = new HashSet<>();

	private Set<ReviewDTO> reviews = new HashSet<>();

	public MovieDTO() {
	}

	public MovieDTO(Long id, String title, String subTitle, Integer year, String imgUrl, String synopsis) {
		super();
		this.id = id;
		this.title = title;
		this.subTitle = subTitle;
		this.year = year;
		this.imgUrl = imgUrl;
		this.synopsis = synopsis;
	}

	public MovieDTO(Movie entity) {
		id = entity.getId();
		title = entity.getTitle();
		subTitle = entity.getSubTitle();
		year = entity.getYear();
		imgUrl = entity.getImgUrl();
		synopsis = entity.getSynopsis();
		entity.getGenres().forEach(genre -> this.genres.add(new GenreDTO(genre)));
	}

	
	public MovieDTO(Movie entity, List<Review> reviews) {
		this(entity);
		reviews.forEach(rev -> this.reviews.add(new ReviewDTO(rev)));
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public Set<GenreDTO> getGenres() {
		return genres;
	}

	public void setGenres(Set<GenreDTO> genres) {
		this.genres = genres;
	}

	public Set<ReviewDTO> getReviews() {
		return reviews;
	}

	public void setReviews(Set<ReviewDTO> reviews) {
		this.reviews = reviews;
	}

}
