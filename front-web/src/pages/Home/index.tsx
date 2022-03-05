import './styles.scss';
import { ReactComponent as Desenho } from '../../core/assets/images/Desenho.svg';
import Mybutton from '../../core/components/Mybutton';

const Home = () => {
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
            <form className="col-6 card-base form-login-container">
                <div className='form-login-title'>
                    login
                </div>
                <div className='margin-bottom-30'>
                    <input
                        type="text"
                        className='input-base form-control'
                        placeholder='Email'
                    />
                </div>
                <div className='margin-bottom-30'>
                    <input
                        type="password"
                        className='input-base form-control mb-5'
                        placeholder='Password'
                    />
                </div>
                <Mybutton title="Fazer Login" />
            </form>
        </div>
    )
};

export default Home;