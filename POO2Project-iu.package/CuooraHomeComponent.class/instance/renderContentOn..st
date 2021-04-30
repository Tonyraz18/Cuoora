rendering
renderContentOn: aCanvas
	aCanvas div with: [ header renderContentOn: aCanvas ].
	self renderMyProfileOn: aCanvas.
	self renderLogoutButtonOn: aCanvas .
	self renderNewQuestOn: aCanvas.
	self renderPostsOn: aCanvas