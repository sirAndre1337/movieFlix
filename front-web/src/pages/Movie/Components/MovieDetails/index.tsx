import { useEffect, useState } from 'react';
import { useForm } from 'react-hook-form';
import { useHistory, useParams } from 'react-router-dom';
import { toast } from 'react-toastify';
import Mybutton from '../../../../core/components/Mybutton';
import { Movie } from '../../../../core/types/Movie';
import { getSessionData } from '../../../../core/utils/auth';
import { makeRequest } from '../../../../core/utils/request';
import MovieCardLoader from '../Loaders/MovieCardLoader';
import './styles.scss';

type ParamsType = {
    movieId: string;
}

type FormState = {
    text: string;
}

const MovieDetails = () => {

    const { movieId } = useParams<ParamsType>();
    const [movie, setMovie] = useState<Movie>();
    const [isLoading, setIsLoading] = useState(false);
    const { userId } = getSessionData();
    const history = useHistory();

    const { register, handleSubmit, formState: { errors } } = useForm<FormState>();

    const onSubmit = (data: FormState) => {
        const payload = {
            ...data, "movieId": movie?.id, "user": {
                "id": userId
            }
        }

        makeRequest({url: '/reviews' , data : payload , method : 'POST'} , 'headerPadrao')
            .then(()=>{
                toast.info('Avaliaçao salva com sucesso!')
                console.log('Reload revies');      
            }).catch(()=>{
                toast.error('Seu perfil não tem autorizaçao para esse recurso.')
                history.push('/home')
            })
        
    }
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
            {isLoading ? <MovieCardLoader numberOfLoaders={1} />
                : <div className='row card-base movie-details-info'>
                    <div className='col-4'>
                        <img src={movie?.imgUrl} alt={movie?.title} className='movie-details-info-img' />
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
                </div>}
            <div className='row card-base movie-post'>
                <form onSubmit={handleSubmit(onSubmit)}>
                    <input
                        type="text"
                        className={`form-control input-base ${errors.text ? 'is-invalid' : ''}`}
                        placeholder='Deixe sua avaliaçao aqui'
                        {...register('text', { required: 'Campo obrigatório',
                        minLength:{value: 2, message: 'O Campo deve ter no mínimo 2 caracteres'},
                        maxLength:{value: 280, message: 'O Campo deve ter no máximo 280 caracteres'} })}
                    />
                    {errors.text && 
                        <div className='invalid-feedback d-block'>
                            {errors.text.message}
                        </div>
                    }
                    <div className='movie-button'>
                        <Mybutton title='Salvar avaliação' />
                    </div>
                </form>
            </div>

        </div>
    )
};

export default MovieDetails;