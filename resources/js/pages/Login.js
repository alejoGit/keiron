import React , { useState, useContext } from 'react';
import { Context } from '../Context'
import { Redirect } from 'react-router-dom';
import { LoginHeader } from '../components/login/LoginHeader';
import { LoginBody } from '../components/login/LoginBody';
import { LoginFooter } from '../components/login/LoginFooter';
import { Loading } from '../components/loading/Loading';
import Notifications, {notify} from 'react-notify-toast';
import axios from "axios";

export default () => {
	const { isAuth, activateAuth, userType } = useContext(Context);
	const [loading, setLoading] = useState(false);
	const API_BASE_URL = "http://localhost:8000/api/";
	
	if(isAuth){
		if(userType==='admin'){
			return <Redirect to="/admin" />
		}
		if(userType==='user'){
			return <Redirect to="/user" />
		}
	}
     
	const onSubmit = ({ email, password }) => {
	    setLoading(true);
	    axios
	      .post(API_BASE_URL + "auth", {
	        email,
	        password
	      })
	      .then(
	        response => {
	          setLoading(false);
	          activateAuth(response.data.access_token, response.data.user_type);
	        },
	        error => {
	          console.log(error);
	          setLoading(false);
	          notify.show("Datos invalidos");
	        }
	      );
	};

	function getLoading(){
		if(loading){
			return <Loading message="¡Verificando usuario!" />;
		}

	}
    return(
    	<div>
	    	{getLoading()}
	    	<Notifications />
	    	<div className="keiron-login__wrapper">
	    		<div className="keiron-login__bg"></div>
	    		<div className="keiron-login__container">
		    		<LoginHeader />
		    		<LoginBody onSubmit={onSubmit} />
	    		</div>
	    		<LoginFooter />
	    	</div>
    	</div>
    )
};