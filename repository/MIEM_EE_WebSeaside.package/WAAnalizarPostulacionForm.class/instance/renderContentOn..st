other
renderContentOn: html

	html div with: [
		html form class: 'boton-cerrar'; with: [
			html fieldSet with: [
				html submitButton class: 'display-block'; callback: [self answer]; with: ('Cerrar' translateIn: self session).
			]
		]
	].

	model hasProcess ifFalse: [model process: taskInstance process].

	html div with: [
		self renderDifferenceOn: html.
	].