import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { Movie } from '../../../../core/types/Movie';
import { makeRequest } from '../../../../core/utils/request';
import './styles.scss';

type ParamsType = {
    movieId: string;
}

const MovieDetails = () => {

    const { movieId } = useParams<ParamsType>();
    const [movie, setMovie] = useState<Movie>();
    const [isLoading, setIsLoading] = useState(false);

    useEffect(() => {
        setIsLoading(true)
        makeRequest({ url: `/movies/${movieId}` }, 'headerPadrao')
            .then(response => setMovie(response.data))
            .finally(() => {
                setIsLoading(false)
            })
    }, [movieId])


    return (
        <div className='movie-details-container'>
            <div className='row card-base movie-details-info'>
                <div className='col-4'>
                    <img src={movie?.imgUrl} alt={movie?.title} className='movie-details-info-img'/>
                </div> 
                <div className='col-8'>
                    <div className='movie-details-title'>
                        <h1>{movie?.title}</h1>
                    </div>
                    <div className='movie-details-year'>
                        <h4>{movie?.year}</h4>
                    </div>
                    <div className="movie-details-synopse">
                        {movie?.synopsis}    
                    </div>
                    <div>
                    {movie?.genres?.map(gen => (
                    <span className='movie-badge-genre' key={gen.id}>
                        {gen.name}
                    </span>
                ))}
            </div>
                </div>   
            </div>
        </div>
    )
};

export default MovieDetails;