import './styles.scss';
import MovieCard from "./Components/MovieCard";
import { useCallback, useEffect, useState } from 'react';
import { Genre, MovieResponse } from '../../core/types/Movie';
import { makeRequest } from '../../core/utils/request';
import MovieCardLoader from './Components/Loaders/MovieCardLoader';
import Pagination from '../../core/components/Pagination';
import MovieFilters from '../../core/components/MovieFilters';
import { Link } from 'react-router-dom';

const Movie = () => {

    const [movieResponse, setMovieResponse] = useState<MovieResponse>();
    const [isLoading, setIsLoading] = useState(false);
    const [activePage, setActivePage] = useState(0);
    const [genre, setGenre] = useState<Genre>();
    
    const handleChangeGenre = (genre: Genre) => {
        setActivePage(0);
        setGenre(genre);
    }

    const getMovies = useCallback(() => {
        const params = {
            page: activePage,
            linesPerPage: 4,
            genreId: genre?.id
        }
        setIsLoading(true);
        makeRequest({url: '/movies', params: params}, 'headerPadrao')
            .then(response => setMovieResponse(response.data))
            .finally(() => {
                setIsLoading(false);
            })
    }, [activePage, genre]);

    useEffect(() => {
        getMovies();
    }, [getMovies])
    
    return (
        <div className='movie-container'>
            <div className='card-base'>
                <MovieFilters
                 genre={genre}
                 handleChangeGenre={handleChangeGenre}
                 />
            </div>
            <div className='catalog-movie mb-5'>
                {isLoading ? <MovieCardLoader numberOfLoaders={4}/> 
                : movieResponse?.content.map(movie => (
                    <Link to={`/movie/${movie.id}`} key={movie.id}>
                        <MovieCard movie={movie} />
                    </Link>
                ))}
            </div>
            <div className='pagination-container'>
                {movieResponse && <Pagination
                    totalPages={movieResponse.totalPages}
                    onChange={page => setActivePage(page)}
                />}
            </div>
        </div>
    )
};

export default Movie;