other
renderContentOn: html

	model hasProcess 
	ifFalse: [model process: taskInstance process.
				model compareEscenarios].

	html div with: [
		model differences do: [:miemMedidaComparison | 
			self renderDifferenceOn: html withDifferences: miemMedidaComparison ] 
	]