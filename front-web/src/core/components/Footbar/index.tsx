import './styles.scss';
import { ReactComponent as Github } from '../../assets/images/github.svg';

const Footbar = () => (
    <div className="bg-primary footer">
        Desenvolvido por André Luis
        <a
            href="https://github.com/sirAndre1337"
            title='GitHub'
            className='foot-img'
            target="_blank"
            rel='noreferrer'
        >
        <Github />
        </a>
    </div>
);

export default Footbar;