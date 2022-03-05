import { useEffect, useState } from 'react';
import { Link, useHistory, useLocation } from 'react-router-dom';
import { getAccessTokenDecode, logout } from '../../utils/auth';
import './styles.scss';

const Navbar = () => {

    const [user, setUser] = useState('');
    const location = useLocation();
    const history = useHistory();
    
    useEffect(() => {
        const userData = getAccessTokenDecode();
        setUser(userData.user_name);
    }, [location])
    
    const handleLogout = (event: React.MouseEvent<HTMLAnchorElement, MouseEvent>) => {
        event.preventDefault();
        logout();
        history.push('/home')
    }

    return (
        <nav className='row bg-primary main-nav'>
            <div className='col-10'>
                <Link to="/" className='nav-logo-text'>
                    <h4>MovieFlix</h4>
                </Link>
            </div>
            {user &&
                <div className='col-2 nav-logout'>
                    <a
                        href="#logout"
                        onClick={handleLogout}
                    >
                        Sair
                    </a>
                </div>
            }
        </nav>
    )
};

export default Navbar;