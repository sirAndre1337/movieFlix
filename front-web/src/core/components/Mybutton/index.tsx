import './styles.scss';

type Props = {
    title: string;
}

const Mybutton = ({ title }: Props) => (
    <button className='my-button btn btn-primary'>
        <div className='my-button-title'>{title}</div>
    </button>
);

export default Mybutton;