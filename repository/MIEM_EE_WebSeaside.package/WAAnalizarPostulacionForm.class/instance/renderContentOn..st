other
renderContentOn: html

	html div with: [
		html form class: 'boton-cerrar'; with: [
			html fieldSet with: [
				html submitButton class: 'display-block'; callback: [self answer]; with: ('Cerrar' translateIn: self session).
			]
		]
	].

	model hasProcess 
	ifFalse: [model process: taskInstance process.
				model compareEscenarios].

	html div with: [
		model differences do: [:miemMedidaComparison | 
			self renderDifferenceOn: html withDifferences: miemMedidaComparison ] 
	].