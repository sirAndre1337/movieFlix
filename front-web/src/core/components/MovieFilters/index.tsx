import './styles.scss';
import Select from 'react-select';
import { Genre } from '../../types/Movie';
import { useEffect, useState } from 'react';
import { makeRequest } from '../../utils/request';

type Props = {
    genre?: Genre;
    handleChangeGenre: (Genre: Genre) => void;
}

const MovieFilters = ({ genre, handleChangeGenre} : Props) => {

    const [genres, setGenres] = useState<Genre[]>([]);
    const [isLoadingGenre, setIsLoadingGenre] = useState(false);

    useEffect(() => {
        setIsLoadingGenre(true)
        makeRequest({url : '/genres'}, 'headerPadrao')
            .then(response => {setGenres(response.data.content)})
            .finally(() => setIsLoadingGenre(false))
    }, [])
    
    return (
        <Select
                key={`select-${genre?.id}`}
                value={genre}
                isLoading={isLoadingGenre}
                getOptionLabel={(option: Genre) => option.name}
                getOptionValue={(option: Genre) => String(option.id)}
                options={genres}
                placeholder="Generos"
                className='filter-select-container'
                classNamePrefix="movie-genre-select"
                onChange={value => handleChangeGenre(value as Genre)}
                isClearable
            />
    )
};

export default MovieFilters;