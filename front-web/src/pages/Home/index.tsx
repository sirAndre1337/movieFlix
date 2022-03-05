import './styles.scss';
import { ReactComponent as Desenho } from '../../core/assets/images/Desenho.svg';
import { useForm } from 'react-hook-form';
import Mybutton from '../../core/components/Mybutton';
import { useState } from 'react';
import { makeLogin } from '../../core/utils/request';
import { saveSessionData } from '../../core/utils/auth';
import { useHistory } from 'react-router-dom';

type FormState = {
    username: string;
    password: string;
}

const Home = () => {

    const { register, handleSubmit, formState: { errors } } = useForm<FormState>();
    const [hasError, setHasError] = useState(false);
    const history = useHistory();
    const onSubmit = (data: FormState) => {
       makeLogin(data, 'login')
            .then(response => {
                setHasError(false);
                saveSessionData(response.data);
                history.push("/movies");
            }).catch(() => {
                setHasError(true);
            })
    }


    return (
        <div className="row home-container">
            <div className="col-6">
                <div className="home-title">
                    MovieFlix
                </div>
                <p className='home-subTitle'>
                    Diga o que você achou do seu <br /> filme favorito
                </p>
                <Desenho className='home-desenho' />
            </div>
            <form className="col-6 card-base form-login-container" onSubmit={handleSubmit(onSubmit)}>
                {hasError && (
                    <div className='alert login-error'>
                        Usuário ou senha inválidos!
                    </div>
                )}
                <div className='form-login-title'>
                    login
                </div>
                <div className='margin-bottom-30'>
                    <input
                        type="email"
                        className={`form-control input-base ${errors.username ? 'is-invalid' : ''}`}
                        placeholder='Email'
                        {...register('username', {
                            required: 'Campo email obrigatório', pattern: {
                                value: /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i,
                                message: "Email inválido"
                            }
                        })}
                    />
                    {errors.username &&
                        <div className='invalid-feedback d-block'>
                            {errors.username.message}
                        </div>}
                </div>
                <input
                    type="password"
                    className={`form-control input-base ${errors.password ? 'is-invalid' : ''}`}
                    placeholder='Password'
                    {...register('password', { required: 'Campo senha obrigatório' })}
                />
                {errors.password &&
                    <div className='invalid-feedback d-block'>
                        {errors.password.message}
                    </div>}
                <div className='mt-5'>
                    <Mybutton title="Fazer Login" />
                </div>
            </form>
        </div>
    )
};

export default Home;