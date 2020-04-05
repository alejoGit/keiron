import React, {useState, useEffect} from 'react';
import { Context } from '../../Context'

import { useInputValue } from '../../hooks/useInputValue';

export const LoginBody = ({onSubmit})=>{
	

	const email = useInputValue('');
    const password = useInputValue('');
    
    const [disabled, setDisabled] = useState('');
   
	const handleSubmit = (event) => {
        event.preventDefault();
       	if( email.validate.isValid && password.validate.isValid ){
       		onSubmit({
	        	email: email.value,
	            password: password.value
	        });
	        
       	}else{
       		setDisabled('disabled');
       		email.validate.validate(email.value)
       		password.validate.validate(password.value)
       	}
        
    }

    useEffect(() => {
		if( email.validate.isValid && password.validate.isValid ){
			setDisabled('')
		}else{
			setDisabled('disabled')
		}
	}, [ email.validate.isValid , password.validate.isValid ]);

   


	return(
		<div className="keiron-login__body">
            <form className="keiron-login__form" onSubmit={handleSubmit}>
				<div className="keiron-login__form-group">
					<label>Correo electrónico</label>
					<div className={`keiron-login__form-input ${email.validate.validateClass}`}>
						<input type="email" name="email" {...email} />
					</div>
				</div>
				<div className="keiron-login__form-group">
					<label>Contraseña</label>
					<div className={`keiron-login__form-input ${password.validate.validateClass}`}>
						<input type="password" name="passwordX" {...password}  />
					</div>
				</div>
				<div className="keiron-login__form-group">
					<button disabled={disabled} className="keiron-button">Ingresar</button>
				</div>
		    </form>
	    </div>
	)
}

