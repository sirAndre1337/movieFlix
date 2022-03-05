import { BrowserRouter, Redirect, Route, Switch } from "react-router-dom";
import Navbar from "./core/components/Navbar";
import PrivateRoute from "./core/components/Routes/PrivateRoute";
import Home from "./pages/Home";
import Movie from "./pages/Movie";

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
        </Switch>
    </BrowserRouter>
);

export default Routes;