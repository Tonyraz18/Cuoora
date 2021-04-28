rendering
renderContentOn: aCanvas
	aCanvas div with: [ header renderContentOn ].
	self renderPostsOn: aCanvas