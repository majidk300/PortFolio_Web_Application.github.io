<style>
    
    
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

body{
    background:#0f0f0f;
}

.login-register {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	margin: 10px 0 50px 0;
        
}

.login-register h1 {
	font-weight: bold;
	margin: 0;
}

.login-register h2 {
	text-align: center;
}

.login-register p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

.login-register span {
	font-size: 12px;
}

.login-register a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

.login-register button {
	border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #FF4B2B;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

.login-register button:active {
	transform: scale(0.95);
}

.login-register button:focus {
	outline: none;
}

.login-register button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

.login-register form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

.login-register input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.login-register .container {
	background-color: #fff;
	border-radius:0 0 10px 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
}

.login-register .form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.login-register .sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.login-register .container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.login-register .sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.login-register .container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}

@keyframes show {
	0%, 49.99% {
		opacity: 0;
		z-index: 1;
	}
	
	50%, 100% {
		opacity: 1;
		z-index: 5;
	}
}

.login-register .overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.login-register .container.right-panel-active .overlay-container{
	transform: translateX(-100%);
}

.login-register .overlay {
	background: #FF416C;
	background: -webkit-linear-gradient(to right, #0f0f0f, #0f0f0f);
	background: linear-gradient(to right, #0f0f0f, #0f0f0f);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
  	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.login-register .container.right-panel-active .overlay {
  	transform: translateX(50%);
}

.login-register .overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.login-register .overlay-left {
	transform: translateX(-20%);
}

.login-register .container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.login-register .overlay-right {
	right: 0;
	transform: translateX(0);
}

.login-register .container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.login-register .social-container {
	margin: 20px 0;
}

.login-register .social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

</style>
