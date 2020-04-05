import React, { useContext, useState } from "react";
import { Context } from "../../Context";
import { useInputValue } from '../../hooks/useInputValue';
import Notifications, {notify} from 'react-notify-toast';
import axios from "axios";


export const AddTicket = ({ users, refreshTickets, setLoading }) => {
  const { getToken } = useContext(Context);
  const API_BASE_URL = "http://localhost:8000/api/";
  const [userId, setUserId] = useState("");
  

  const usersList = () => {

    return users.map(item => (
    	<option key={item.id} value={item.id}>{item.name}</option>
    ));
  };
  const onChangeUserId = e => {
    	setUserId(e.target.value);
  }
  const handleSubmit = (event) => {
		event.preventDefault();
		if(userId.value==''){
			notify.show("Porfavor seleccione un usuario", "error");
			return;
		}
		setLoading(true);
		axios
	      .post(API_BASE_URL + "admin/tickets/",
	      	{ 'user_id': userId },
		    {
		        headers: { 'Authorization': "Bearer " + getToken() }
		    },
	      )
	      .then(
	        response => {
	          // console.log(response.data);	
	          setUserId('');
	          refreshTickets(response.data);
	          setLoading(false);
	          notify.show("Se creó el ticket correctamente", "success");
	        },
	        error => {
	          console.log(error);
	          setLoading(false);
	        }
	      );
	}



  	return (
    <React.Fragment>
    	<Notifications />
    	<form className="row" onSubmit={handleSubmit}>
    		<div className="col-9 from-group">
    			<select className="form-control" value={userId} onChange={onChangeUserId}>
    				<option value="">Seleccionar usuario</option>
    				{usersList()}
    			</select>
    		</div>
    		<div className="col-3 from-group">
    			<button className="btn btn-success btn-block text-uppercase">Asignar Ticket</button>
    		</div>
    	</form>
    </React.Fragment>
  );
};
