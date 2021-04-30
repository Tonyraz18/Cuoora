as yet unclassified
logOut
	self session unregister.
	self requestContext redirectTo: self application url