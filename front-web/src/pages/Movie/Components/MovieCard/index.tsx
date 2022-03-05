import { Movie } from '../../../../core/types/Movie';
import './styles.scss';

type Props = {
    movie: Movie;
}

const MovieCard = ({ movie }: Props) => (
    <div className='card-base movie-card'>
        <img src={movie.imgUrl} alt={movie.title} className="movie-card-image" />
        <div className='movie-info'>
            <h6 className='movie-title'>
                {movie.title}
            </h6>
            <div className='movie-year'>
                {movie.year}
            </div>
            <div>
                {movie.genres?.map(gen => (
                    <span className='movie-badge-genre' key={gen.id}>
                        {gen.name}
                    </span>
                ))}
            </div>
        </div>
    </div>
);

export default MovieCard;