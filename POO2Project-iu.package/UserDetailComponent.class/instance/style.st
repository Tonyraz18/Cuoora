hooks
style
	^ '
		a{
	color:black;
	}
	.navbar {
  		position: relative;
  		display: flex;
  		flex-wrap: wrap;
  		align-items: center;
  		justify-content: space-between;
  		padding-top: 0.5rem;
  		padding-bottom: 0.5rem;
	}
	.navbar-expand-lg{
		-webkit-box-orient:horizontal;
		-webkit-box-direction: normal;
		flex-flow:row nowrap;
		-webkit-box-pack:start;
		justify-content:flex-start;
	}
	.navbar-brand{
		display:inline-block;
		padding-top:.3125rem;
		padding-bottom:.3125rem;
		margin-right:1rem;
		margin-left:10px;
		font-size:1.5rem;
		line-height:inherit;
		white-space:nowrap;
		color: #fff;
	}
	.bg-dark{
		background-color: #343a40 !important;
	}
	.navbar ul{
		list-style-type:none;
		margin-right:20px;
	}
	.justify-content-between{
		-webkit-box-pack: justify !important;
		justify-content: space-between !important;
	}
	
	*{
		margin:0;
		padding:0;
		box-sizing:border-box;
	}
	body{
		font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe 		UI Emoji","Segoe UI Symbol";
		font-size: 1rem;
		font-weight: 400;
		line-height: 1.5;
		color:black;
		text-align: left;
		background-color: grey;
	}
	.jumbotron h1{
		margin-bottom: .5rem;
		font-weight: 500;
		line-height: 1.2;
		font-size: 2.5rem;
		margin-top: 0;
	}
	.jumbotron .container img{
		width: 120px;
		height: 120px;
		border: 3px solid #28a745;
		border-radius: 50%;
		margin-left: 1.5rem;
	}
	hr{
		margin: 1rem 0;
  	 	color: inherit;
   		background-color: currentColor;
    	border: 0;
    	opacity: 0.25;
    	height: 1px;
	}
	.container {
  		padding-right: 15px;
  		padding-left: 15px;
  		margin-right: auto;
  		margin-left: auto;
	}
	@media (min-width: 768px) {
 	.container {
   		width: 750px;
 	}
	.description {
  		left: 50%;
  		position: absolute;
  		top: 45%;
  		transform: translate(-50%, -55%);
  		color: rgba(255, 255, 255, 0.925);
  		line-height: 1.5;
		
	}
	
	}
	@media (min-width: 992px) {
  	.container {
    	width: 970px;
  	}
	}
	@media (min-width: 1200px) {
  	.container {
   		width: 1170px;
  	}
	}
	
	.jumbotron{
		padding: 4rem 2rem;
		margin-bottom:2rem;
		background-color:#e9ecef;
	}
	.jumbotron-fluid{
		padding-right:0;
		padding-left:0;
		border-radius:0;
	}
	.btn{
	margin:10px;
		display:inline-block;
		font-weight:400;
		text-align:center;
		vertical-align:middle;
		border:1px solid #0000;
		padding: .375rem .75rem;
		font-size:1rem;
		line-height:1.5;
		border-radius:.25rem;
		transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
		cursor:pointer;
		font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe 		UI Emoji","Segoe UI Symbol";
	}
	.btn-danger{
		color:#fff;
		background-color:#dc3545;
		border-color:#dc3545;
	}
	.btn-danger:hover{
		color:#fff;
		background-color:#c82333;
		border-color:#bd2130;
	}
	.btn-outline-danger{
		color: #dc3545;
		background-color: transparent;
		background-image: none;
		border-color: #dc3545;
	}
	.btn-outline-danger:hover{
		color: #fff;
		background-color: #dc3545;
		border-color: #dc3545;
	}
	.btn-success{
		color:#fff;
		background-color:#28a745;
		border-color:#28a745;
	}
	.btn-success:hover{
		color:#fff;
		background-color:#218838;
		border-color:#1e7e34;
	}
	.btn-outline-success{
		color: #28a745;
		background-color: transparent;
		background-image: none;
		border-color: #28a745;
	}
	.btn-outline-success:hover{
		color: #fff;
		background-color: #28a745;
		border-color: #28a745;
	}
	.btn-primary{
		color:#fff;
		background-color:#007bff;
		border-color:#007bff;
	}
	.btn-primary:focus{
		box-shadow: 0 0 0 .2rem rgba(38,143,255,.5);
		outline:0;
	}
	.btn-primary:hover{
		color: #fff;
    	background-color: #0069d9;
   		border-color: #0062cc;
	}
	.btn-sm{
		padding: .25rem .5rem;
		font-size: .875rem;
		line-height: 1.5;
		border-radius: .2rem;
	}
	.form-inline{
		display: flex;
		-webkit-box-orient: horizontal;
		-webkit-box-direction: normal;
		flex-flow: row wrap;
		-webkit-box-align: center;
		align-items: center;
	}
	.form-inline .form-Control{
		display: inline-block;
		width: auto;
	}
	.form-control{
		padding: .375rem .75rem;
		font-size: 1rem;
		line-height: 1.5;
		color: #495057;
		background-color: #fff;
		background-clip: padding-box;
		border: 1px solid #ced4da;
		border-radius: .25rem;
		transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
	}
	.form-control:focus {
    	color: #495057;
    	background-color: #fff;
    	border-color: #80bdff;
    	outline: 0;
    	box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);
	}
	.form-control::placeholder{
		color: #6c757d;
		opacity:1;
	}
	.mr-sm-2, .mx-sm-2{
		margin-right:.5rem !important;
	}
	.pregunta .topicosDePregunta{
		color: #6c757dab !important;
		font-weight:650;
	}
	.pregunta h3 a{
		color: inherit;
		text-decoration:none;
	}
	.pregunta strong a{
		color: inherit;
		text-decoration:none;
	}
	.topicosDePregunta .topico{
		margin-right:.5rem;
	}
	.display-4 {
		margin-bottom:1.5rem;
   		font-size: 2rem;
  	  	font-weight: 600;
 	   line-height: 1.2;
	}
	.imgJumbo {
 		background-image: url("https://images.unsplash.com/photo-1550745165-9bc0b252726f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80");
  		background-size: cover;
  		background-position: center;
  		position: relative;
  		height: 50vh;
	}
	.overlay {
  		position: absolute;
  		min-height: 100%;
  		min-width: 100%;
  		left: 0;
  		top: 0;
  		background: rgba(0, 0, 0, 0.459);
	}
	
	.description {
  		left: 50%;
  		position: absolute;
  		top: 45%;
  		transform: translate(-50%, -55%);
  		color: rgba(255, 255, 255, 0.925);
  		line-height: 1.5;
		margin-top:1.5rem;
	}

	'