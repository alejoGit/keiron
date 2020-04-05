import React, { useContext } from "react";
import { Context } from "../../Context";

import axios from "axios";
import { confirmAlert } from 'react-confirm-alert'; // Import
import 'react-confirm-alert/src/react-confirm-alert.css'; // Import css

export const UserTickets = ({ tickets = [], refreshTickets }) => {
  const { getToken } = useContext(Context);
  const API_BASE_URL = "http://localhost:8000/api/";
  const onClickTicket = id => {
  	
  	confirmAlert({
      title: 'Pedir ticket',
      message: 'Estas seguro?',
      buttons: [
        {
          label: 'Sí',
          onClick: () => {
          	 axios
		      .patch(API_BASE_URL + "user/tickets/" + id, {} , {
		        headers: { Authorization: "Bearer " + getToken() }
		      })
		      .then(
		        response => {
		          console.log(response.data);
		          refreshTickets(response.data.id);
		          // setLoading(false);
		        },
		        error => {
		          console.log(error);
		          //setLoading(false);
		        }
		      );
          }
        },
        {
          label: 'No',
          onClick: () => {

          }
        }
      ]
    });
    
   
  };


  const list = () => {
    return tickets.map(item => (
    	<tr key={item.id}>
			<td>{item.id}</td>
			
			<td>

				{ item.status ==0 ? <span className="badge badge-warning">No pedido</span> : <span className="badge badge-success">Pedido</span> }
			</td>
			<td className="text-right">
				{ item.status==0 &&
			        <button className="btn btn-info btn-sm" onClick={() => onClickTicket(item.id)}>Pedir Ticket</button>
			    }
				
			</td>
		</tr>
    ));
  };
  return (
    <React.Fragment>
    <table className="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Estado</th>
				<th className="text-right"></th>
			</tr>
		</thead>
		<tbody>
			{list()}
		</tbody>
	</table>
      
    </React.Fragment>
  );
};
