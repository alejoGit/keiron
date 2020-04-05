import React, { useContext } from "react";
import { Context } from "../../Context";

import axios from "axios";
import { confirmAlert } from 'react-confirm-alert'; // Import
import 'react-confirm-alert/src/react-confirm-alert.css'; // Import css

export const AdminTickets = ({ tickets = [], refreshTickets }) => {
  const { getToken } = useContext(Context);
  const API_BASE_URL = "http://localhost:8000/api/";
  const onDeleteClick = id => {
  	
  	confirmAlert({
      title: 'Eliminar el ticket',
      message: 'Estas seguro?',
      buttons: [
        {
          label: 'Sí',
          onClick: () => {
          	 axios
		      .delete(API_BASE_URL + "admin/tickets/" + id, {
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
			<td>{item.user.name}</td>
			<td>

				{ item.status ==0 ? <span className="badge badge-warning">No pedido</span> : <span className="badge badge-info">Pedido</span> }
			</td>
			<td className="text-right">
				<button className="btn btn-danger btn-sm" onClick={() => onDeleteClick(item.id)}>Eliminar</button>
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
				<th>Usuario Asignado</th>
				<th>Estado</th>
				<th className="text-right">Eliminar</th>
			</tr>
		</thead>
		<tbody>
			{list()}
		</tbody>
	</table>
      
    </React.Fragment>
  );
};
