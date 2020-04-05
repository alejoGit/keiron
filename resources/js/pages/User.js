import React, { useState, useEffect, useContext } from "react";
import { Context } from "../Context";
import { Redirect } from 'react-router-dom';
import axios from "axios";
import { Header } from "../components/header/Header";
import { Loading } from "../components/loading/Loading";
import { UserTickets } from "../components/user/UserTickets";

export default () => {
	const API_BASE_URL = "http://localhost:8000/api/";
	const { removeAuth, getToken, userType } = useContext(Context);
	const [loading, setLoading] = useState(true);
	const [tickets, setTickets] = useState([]);
	const [user, setUser] = useState({});

	if(userType==='admin'){
		return <Redirect to="/admin" />
	}

	useEffect(() => {
	    fetchData();
	    return () => {};
	}, []);
	const fetchData = () => {
		setLoading(true);
	    axios
	      .get(API_BASE_URL + "user", {
	        headers: { Authorization: "Bearer " + getToken() }
	      })
	      .then(
	        response => {
	        	console.log(response.data)
	        	setTickets(response.data.tickets);
	        	setUser(response.data.user)
	          	setLoading(false);
	        },
	        error => {
	          console.log(error);
	          setLoading(false);
	        }
	      );
	  }; 

	function getLoading() {
	    if (loading) {
	      return <Loading message="Cargando..." />;
	    }
	}

	

	function refresh(data){
		fetchData();
	}

	
	
	return (
    <React.Fragment>
    	{getLoading()}
        <Header />
    	<div className="container">
    	 	<div className="row">
    	 		<div className="col-10 mx-auto d-flex align-items-center">
    	 			<h3 className="my-4">Tickets</h3>
    	 			{ user.email &&
    	 			<div className="pl-3">{user.name} <small className="text-muted">{user.email}</small></div>
    	 			}
    	 		</div>
    	 	</div>
    		<div className="row">
    	 		<div className="col-10 mx-auto">
    	 			<UserTickets tickets={tickets} refreshTickets={refresh}  /> 
    	 		</div>
    	 	</div>
    	</div>
    </React.Fragment>
    )
};