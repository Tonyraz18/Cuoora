rendering
renderContentOn: aCanvas
	aCanvas div with:[self renderHeaderOn: aCanvas].
	self renderPostsOn: aCanvas.
	