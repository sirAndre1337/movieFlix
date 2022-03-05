import './styles.scss';
import MovieCard from "./Components/MovieCard";
import { useCallback, useEffect, useState } from 'react';
import { Genre, MovieResponse } from '../../core/types/Movie';
import { makeRequest } from '../../core/utils/request';
import MovieCardLoader from './Components/Loaders/MovieCardLoader';

const Movie = () => {

    const [movieResponse, setMovieResponse] = useState<MovieResponse>();
    const [isLoading, setIsLoading] = useState(false);
    const [activePage, setActivePage] = useState(0);
    const [genre, setGenre] = useState<Genre>();

    const getMovies = useCallback(() => {
        const params = {
            page: activePage,
            linesPerPage: 12,
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
            <div>
                filtro por categoria
            </div>
            <div className='catalog-movie'>
                {isLoading ? <MovieCardLoader /> 
                : movieResponse?.content.map(movie => (
                    <MovieCard movie={movie} key={movie.id}/>
                ))}
            </div>
        </div>
    )
};

export default Movie;