rendering
renderContentOn: aCanvas
	aCanvas div with: [ header renderContentOn: aCanvas ].
	self renderNewQuestOn: aCanvas.
	self renderPostsOn: aCanvas