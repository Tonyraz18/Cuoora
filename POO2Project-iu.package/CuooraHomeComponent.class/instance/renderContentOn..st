rendering
renderContentOn: aCanvas
	aCanvas div
	class:'cover'.
	aCanvas
		heading: 'CuOOra Bienvenido ' , self session usuario NombreUsuario.
	aCanvas image
		url: 'https://cdn1.eldia.com/122020/1608531207862.jpg';
		width: 300.
	self renderPostsOn: aCanvas.
	self renderLogoutButtonOn: aCanvas