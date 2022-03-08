import { useCallback, useEffect, useState } from 'react';
import { useForm } from 'react-hook-form';
import { useHistory, useParams } from 'react-router-dom';
import { toast } from 'react-toastify';
import Mybutton from '../../../../core/components/Mybutton';
import { Movie, ReviewResponse } from '../../../../core/types/Movie';
import { getSessionData, isAllowedByRole } from '../../../../core/utils/auth';
import { makeRequest } from '../../../../core/utils/request';
import MovieCardLoader from '../Loaders/MovieCardLoader';
import { ReactComponent as StarIcon } from '../../../../core/assets/images/star.svg';
import './styles.scss';
import Pagination from '../../../../core/components/Pagination';

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
    const [reviewResponse, setReviewResponse] = useState<ReviewResponse>();
    const [activePage, setActivePage] = useState(0);

    const { reset, register, handleSubmit, formState: { errors } } = useForm<FormState>();

    const handleCreate = () => {
        history.push('/movies');
    }

    const onSubmit = (data: FormState) => {
        const payload = {
            ...data, "movieId": movie?.id, "user": {
                "id": userId
            }
        }

        makeRequest({ url: '/reviews', data: payload, method: 'POST' }, 'headerPadrao')
            .then(() => {
                reset();
                toast.info('Avaliaçao salva com sucesso!')
                getReviews();
            }).catch(() => {
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

    const getReviews = useCallback(() => {
        const params = {
            page: activePage,
            linesPerPage: 4,
            orderBy: "id",
            direction: 'DESC'
        }
        setIsLoading(true)
        makeRequest({ url: `/reviews/${movieId}`, params: params }, 'headerPadrao')
            .then(response => setReviewResponse(response.data))
            .finally(() => {
                setIsLoading(false);
            })
    }, [activePage, movieId])

    useEffect(() => {
        getReviews()
    }, [getReviews])

    return (
        <div className='d-flex justify-content-center mt-5'>

            {isLoading ? <MovieCardLoader numberOfLoaders={1} />
                :

                <div className='movie-details-container'>
                    <button className="btn btn-primary btn-lg btn-voltar mb-5" onClick={handleCreate}>
                        VOLTAR
                    </button>
                    <div className='row card-base movie-details-info'>
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
                    </div>
                    {isAllowedByRole(['ROLE_MEMBER']) &&
                        <div className='row card-base movie-post'>
                            <form onSubmit={handleSubmit(onSubmit)}>
                                <input
                                    type="text"
                                    className={`form-control input-base ${errors.text ? 'is-invalid' : ''}`}
                                    placeholder='Deixe sua avaliaçao aqui'
                                    {...register('text', {
                                        required: 'Campo obrigatório',
                                        minLength: { value: 2, message: 'O Campo deve ter no mínimo 2 caracteres' },
                                        maxLength: { value: 280, message: 'O Campo deve ter no máximo 280 caracteres' }
                                    })}
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
                        </div>}
                    {reviewResponse?.content.length === 0 ? '' : <div className='row card-base movie-reviews'>
                        <span className='d-flex justify-content-end text-white'>Total de reviews : {reviewResponse?.totalElements}</span>
                        {reviewResponse?.content.map(review => (
                            <>
                                <div className='d-flex align-items-center'>
                                    <StarIcon className='movie-review-icon' />
                                    <span className='movie-review-user'>{review.user.name}</span>
                                </div>
                                <div className='movie-review-text'>
                                    {review.text}
                                </div>
                            </>
                        ))}
                        {reviewResponse && <Pagination
                            totalPages={reviewResponse.totalPages}
                            onChange={page => setActivePage(page)}
                        />}
                    </div>
                    }

                </div>
            }
        </div>
    )
};

export default MovieDetails;