import React, { useContext, useState } from 'react';

import { BrowserRouter, Switch, Route, Redirect } from 'react-router-dom';

//import Layout from './Layout';
import Login from './pages/Login';
import Admin from './pages/Admin';
import User from './pages/User';
import NotFound from './pages/NotFound';

import { Context } from './Context'


const PrivateRoute = ({ isAuth, ...props }) =>
  isAuth
    ? <Route { ...props } />
    : <Redirect to="/" />

export const MainApp = () => {
    const { isAuth } = useContext(Context)
    return <BrowserRouter>
  
	        <Switch>
	        	<Route exact path="/">
	        		<Login />
	        	</Route>
	        	
	        	<PrivateRoute exact isAuth={ isAuth } path="/admin">
	        		<Admin />
	        	</PrivateRoute>
	        	<PrivateRoute exact isAuth={ isAuth } path="/user">
	        		<User />
	        	</PrivateRoute>
	        	
	        	<Route path="*">
	        		<NotFound />
	        	</Route>
	          	
	          
	        </Switch>
      
    </BrowserRouter>
}

