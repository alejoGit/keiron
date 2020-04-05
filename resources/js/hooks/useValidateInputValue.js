import { useState } from 'react';

export const useValidateInputValue = () => {
	const [isValid, setIsValid] = useState(false);
    const [validateClass, setValidateClass] = useState('');
    
    function validateEmail(value) {
	 	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value)){
	    	return (true)
		}
	    return (false)
	}
	function validateSize(value){
		if(/^(?!\s*$).+/.test(value)){
			return true;
		}
		return false;
	}
	function successValidation(){
		setValidateClass('keiron-input__sueccess');
    	setIsValid(true);
	}
	function failedValidation(){
		setValidateClass('keiron-input__failed');
    	setIsValid(false);
	}
    const validate = (value, type) =>{
    	if( validateSize(value) ){
    		successValidation();
    	}else{
    		failedValidation();
    	}

    	if( type === 'email' ){
    		if( validateEmail(value) ){
    			successValidation();
	    	}else{
	    		failedValidation();
	    	}

    	}    	
    } 

    return { isValid, validateClass, validate }
}