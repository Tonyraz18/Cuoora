as yet unclassified
RenderNewQuestOn: aCanvas

	aCanvas anchor
		class: 'newpost';
		callback: [ self call: (PreguntaCreacionComponent new ) ];
		with: [ aCanvas button class: 'btn btn-success';with: 'Nueva Pregunta' ]