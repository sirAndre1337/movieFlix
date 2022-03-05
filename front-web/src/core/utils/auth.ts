import jwtDecode from 'jwt-decode';
import history from './history';

export const CLIENT_ID  = process.env.REACT_APP_CLIENT_ID ?? 'movieflix';
export const CLIENT_SECRET = process.env.REACT_APP_CLIENT_SECRET ?? 'movieflix123';

type LoginResponse = {
    access_token: string;
    token_type: string;
    expires_in: number;
    scope: string;
    userName: string;
    userId: number;
}

export type Role = "ROLE_VISITOR" | "ROLE_MEMBER";

type AccessToken = {
    "exp": number;
    "user_name": string;
    "authorities": Role[];
}

// funçao para add o usuario no sistema apos login valido.
export const saveSessionData = (loginResponse: LoginResponse) => {
    localStorage.setItem('authData', JSON.stringify(loginResponse));
}

// funçao para retornar um usuario logado.
export const getSessionData = () => {
    const sessionData = localStorage.getItem('authData') ?? '{}';
    const parsedSessionData = JSON.parse(sessionData);
  
    return parsedSessionData as LoginResponse;
}

// função que decodifica o jwt e retonar um AcessToken
export const getAccessTokenDecode = () => {
    const sessionData = getSessionData();

    try {
        const tokenDecoded = jwtDecode(sessionData.access_token);
        return tokenDecoded as AccessToken;
    } catch (error) {
        return {} as AccessToken;
    }
}

// função que verifica se o token esta expirado
export const isTokenValid = () => {
    const { exp } = getAccessTokenDecode();

    if(Date.now() <= exp * 1000) {
        return true;
    }
    return false;
}

// funçao que so retorna true se as 2 condiçoes forem verdades
export const isAuthenticated = () => {
    const sessionData = getSessionData();

    // Verifica se o authData esta no localStore
    // Verifica se o token não esta expirado
    return sessionData.access_token && isTokenValid();
}

// funçao que retorna true se tiver a role passada por parametro
export const isAllowedByRole = (routeRoles: Role[] = []) => {
    if(routeRoles.length === 0) {
        return true;
    }

    const { authorities } = getAccessTokenDecode();
    // Verifica se as roles do usuario existem na role passada por parametro
    return routeRoles.some(role => authorities?.includes(role));
}

export const logout = () => {
    localStorage.removeItem('authData');
    history.replace('/');
}