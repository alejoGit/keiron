import React from 'react';

export const Loading = (props)=>{
	return(
		<div className="keiron-loading__wrapper">
			<div className="keiron-loading__message">{props.message}</div>
			<img
    			className="keiron-loading__loader"
                src="/img/loading.gif"
                alt="Gocloud Loading"/>
	    </div>
	)
}

