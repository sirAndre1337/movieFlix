import { Movie } from '../../../../core/types/Movie';
import './styles.scss';

type Props = {
    movie: Movie;
}

const MovieCard = ({ movie } : Props) => (
    <div className='card-base'>
        {movie.title}
    </div>
);

export default MovieCard;