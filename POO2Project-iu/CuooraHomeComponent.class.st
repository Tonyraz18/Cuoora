"
pagina principal del la app
"
Class {
	#name : #CuooraHomeComponent,
	#superclass : #WAComponent,
	#instVars : [
		'relevantes'
	],
	#category : #'POO2Project-iu'
}

{ #category : #'instance creation' }
CuooraHomeComponent class >> principal [
	^self new 
]

{ #category : #'as yet unclassified' }
CuooraHomeComponent class >> usuariologueado: unUsuario [
	^self new cargarUsuarioLogueado: unUsuario 
]

{ #category : #'as yet unclassified' }
CuooraHomeComponent >> Style [
	^ '
:root{

	--paneles:rgb(255, 255, 255);
	--font:rgb(0, 0, 0);
	--hover:#20e3b2;
	--nav:rgb(255, 255, 255);
	--formulario:#fff;
	--Bordes:#8d8d8d;
}

/*---------- FORMULARIO ----------*/

.formulary {
	grid-area: formulario;
	border-radius: 20px;
    width: 70%;
    background: var(--formulario);
    padding: 30px;
    margin: auto;
    margin-top: 50px;
    margin-bottom: 30px;
    font-size: 20px;
    color: var(--font);
	box-shadow: 0px 0px 70px rgba(0, 0, 0, 0.552);
    text-align: center;
    
}

.formulary .fechaYhora{
    justify-content: center;
    display: flex;
}

.formulary .fechaYhora select{
    justify-content: center;
    width: 100px;
}

.formulary h2{
    font-size: 22px;
}

.formulary input[type="text"]{
    width: 50%;
    background: var(--paneles);
    margin-bottom: 16px;
    border: none;
    border-bottom: 2px solid var(--Bordes);
    outline: none;
    color: var(--font);
}
.formulary input[type="password"]{
    width: 50%;
    background: var(--paneles);
    padding: 10px;
    margin-bottom: 16px;
    border: none;
    border-bottom: 2px solid var(--Bordes);
    outline: none;
    color: var(--font);
}

.formulary input[type="submit"]{
    width: 50%;
    background: var(--paneles);
    padding: 10px;
    margin-bottom: 16px;
    border: 2px solid var(--Bordes);
    outline: none;
    color: var(--font);
}

.formulary input[type="file"]{
    width: 50%;
    background: var(--paneles);
    padding: 10px;
    margin-bottom: 16px;
    border: 2px solid var(--Bordes);
    outline: none;
    color: var(--font);
}


.formulary .options{
	color: var(--font);
    width: 10%;
    background: var(--paneles);
	padding: 10px;
    margin-bottom: 16px;
	border: none;
    outline: none;
}

.formulary .botones{
    color: var(--font);
    width: 50%;
    background: var(--paneles);
    padding: 10px;
    margin-bottom: 16px;
	border: 2px solid var(--Bordes);
    outline: none;
}

.formulary a{
    color: var(--font);
    font-weight: bold;
}

.formulary select{
    color: var(--font);
    width: 50%;
    background: var(--paneles);
    padding: 10px;
    margin-bottom: 16px;
    border-color: var(--Bordes);
}


.formulary img{
        width: 100%;
        height: 100%;
        object-fit: cover;
}

.formulary textarea{
    color: var(--font);
    width: 50%;
    height: 120px;
    resize: none;
    outline: none;
    border: 2px solid var(--Bordes);
}

input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus,
select:-webkit-autofill,
select:-webkit-autofill:hover,
select:-webkit-autofill:focus {
-webkit-text-fill-color: black;
-webkit-box-shadow: 0 0 0px 1000px rgba(0, 0, 0, 0) inset; transition: background-color 5000s ease-in-out 0s;
}





'
]

{ #category : #constructor }
CuooraHomeComponent >> cargarUsuarioLogueado: unUsuario [
	usuario := unUsuario 
]

{ #category : #'as yet unclassified' }
CuooraHomeComponent >> crearPregunta [
	self call: PreguntaComponent new
]

{ #category : #initialization }
CuooraHomeComponent >> initialize [
	super initialize .
	relevantes := self session usuario devolverMisPreguntas . "deberia ser preguntas relevantes pero no sabemos por que no nos anda el relevantes"
	relevantes sort: [:a :b| a fecha > b fecha ]
	
	
]

{ #category : #rendering }
CuooraHomeComponent >> renderContentOn: aCanvas [
	aCanvas
		heading: 'Bienvenido ' , self session usuario NombreUsuario , ' !!'.
	self renderPostsOn: aCanvas.
	self renderLogoutButtonOn: aCanvas
]

{ #category : #rendering }
CuooraHomeComponent >> renderLogoutButtonOn: aCanvas [
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self answer ];
				with: [ aCanvas button with: 'Logout' ] ]
]

{ #category : #rendering }
CuooraHomeComponent >> renderPostsOn: aCanvas [
	aCanvas heading
		level: 2;
		with: 'Posts'.
	aCanvas
		unorderedList: [ relevantes
				do: [ :each | aCanvas listItem: [ aCanvas text: each titulo ] ] ].
	aCanvas anchor
		callback: [ self crearPregunta ];
		with: [ aCanvas button: 'New post' ]
]

{ #category : #style }
CuooraHomeComponent >> style [
	^ 'button.reaction {
		background-color: rgb(23, 163, 128);
		width: 90px;
		border-radius: 50px;
		float: left}
		
		button:hover {
      background: rgba(131, 131, 131, 0.774);
	   transition: all 0.4s linear;}
		
		.newpost{
		position: absolute;
		bottom: 310px;
		right: 900px;
		background-color: rgb(185, 185, 211);}
		
		.logout{
		position: fixed;
		right: 0;
		bottom: 500px;}
		
		.cover{
		position: fixed;
		width: 100%;
		height: 100%;
		z-index: -1;
		background-color:rgb(159, 219, 196)}'
]
