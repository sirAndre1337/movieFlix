import { BrowserRouter, Redirect, Route, Switch } from "react-router-dom";
import Footbar from "./core/components/Footbar";
import Navbar from "./core/components/Navbar";
import PrivateRoute from "./core/components/Routes/PrivateRoute";
import Home from "./pages/Home";
import Movie from "./pages/Movie";
import MovieDetails from "./pages/Movie/Components/MovieDetails";

const Routes = () => (
    <BrowserRouter>
        <Navbar />
        <Switch>
        <Redirect from='/home' to="/" exact/>
            <Route path="/" exact>
                <Home />
            </Route>
            <PrivateRoute path="/movies">
                <Movie />
            </PrivateRoute>
            <PrivateRoute path="/movie/:movieId">
                <MovieDetails />
            </PrivateRoute>
        </Switch>
        <Footbar />
    </BrowserRouter>
);

export default Routes;