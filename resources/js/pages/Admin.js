import React, { useState, useEffect, useContext } from "react";
import { Context } from "../Context";
import { Redirect } from 'react-router-dom';
import axios from "axios";
import { Header } from "../components/header/Header";
import { Loading } from "../components/loading/Loading";
import { AddTicket } from "../components/admin/AddTicket";
import { AdminTickets } from "../components/admin/AdminTickets";

export default () => {
	
	
	
	const API_BASE_URL = "http://localhost:8000/api/";
	const { removeAuth, getToken, userType } = useContext(Context);
	const [loading, setLoading] = useState(true);
	const [users, setUsers] = useState([]);
	const [tickets, setTickets] = useState([]);

	if(userType==='user'){
		return <Redirect to="/user" />
	}

	useEffect(() => {
	    fetchData();
	    return () => {};
	}, []);
	const fetchData = () => {
	    axios
	      .get(API_BASE_URL + "admin", {
	        headers: { Authorization: "Bearer " + getToken() }
	      })
	      .then(
	        response => {
	        	// console.log(response.data)
	        	setTickets(response.data.tickets);
	        	setUsers(response.data.users);
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

	function refreshDeleted(id) {
	    const deletedTicket = tickets.find(element => element.id === id);
	    const index = tickets.indexOf(deletedTicket);
	    tickets.splice(index, 1);
	    setTickets( [...tickets] );
	}

	function refreshAdded(data){
		fetchData();
	}

	
	
	return (
    <React.Fragment>
    	{getLoading()}
        <Header />
    	<div className="container">
    	 	<div className="row">
    	 		<div className="col-10 mx-auto">
    	 			<h3 className="my-4">Admin</h3>
	    	 		<AddTicket users={users} refreshTickets={refreshAdded} setLoading={setLoading} />
    	 		</div>
    	 	</div>
    		<div className="row py-5">
    	 		<div className="col-10 mx-auto">
    	 			<AdminTickets tickets={tickets} refreshTickets={refreshDeleted}  /> 
    	 		</div>
    	 	</div>
    	</div>
    </React.Fragment>
    )
};