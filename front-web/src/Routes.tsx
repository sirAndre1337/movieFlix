import { BrowserRouter, Redirect, Route, Switch } from "react-router-dom";
import Navbar from "./core/components/Navbar";
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
            <Route path="/movies">
                <Movie />
            </Route>
        </Switch>
    </BrowserRouter>
);

export default Routes;