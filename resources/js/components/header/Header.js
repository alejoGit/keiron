import React, {useContext} from 'react';
import { Context } from "../../Context";

export const Header = (props)=>{
	const { removeAuth } = useContext(Context);
	const logout = (e)=>{
		e.preventDefault();
		removeAuth();
	}
	return(
		<div className="container">
			<div className="row">
				<div className="col-10 pt-4 mx-auto d-flex align-items-center justify-content-between">
					<img
					className="keiron-login__logo"
				    src="https://www.keiron.cl/img/general/logo.svg"
				    alt="Logo"/>
				    <a onClick={logout} href="#">Cerrar Sesión</a>
				</div>
			 </div>
	    </div>
	)
}

