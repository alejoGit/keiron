import React from 'react';

import ReactDOM from 'react-dom';

import {MainApp} from './MainApp'
import { Provider } from './Context'


ReactDOM.render(<Provider><MainApp/></Provider>,
	document.getElementById('app'))
