rendering
renderContentOn: aCanvas
	aCanvas div with: [ header renderContentOn: aCanvas ].
	self RenderNewQuestOn: aCanvas.
	self renderPostsOn: aCanvas.
	