other
renderDifferenceOn: html withDifferences: aMiemMedidaComparison 

	html div class: 'margin-top-20px'; with: [
		html legend with: [html strong with: aMiemMedidaComparison nombreMedida].
		html div class: 'display-inline-flex margin-left-10px width-200px'; with: [html strong with: [html output with: 'Campo']].
		html div class: 'display-inline-flex margin-left-10px'; with: [html strong with: [html output with: 'Sin Medida']].
		html div class: 'display-inline-flex margin-left-10px'; with: [html strong with: [html output with: 'Con Medida']].
		html div class: 'display-inline-flex margin-left-10px'; with: [html strong with: [html output with: 'Differencia']].
		aMiemMedidaComparison differences do: [:aMiemMedidaComparisonValue |
			html div with: [
				html div class: 'display-inline-flex margin-left-10px width-200px'; with: [html output with: (aMiemMedidaComparisonValue nombreCampo allButFirst: 12)].
				html div class: 'display-inline-flex margin-left-10px'; with: [html output with: aMiemMedidaComparisonValue valorSinMedida].
				html div class: 'display-inline-flex margin-left-10px'; with: [html output with: aMiemMedidaComparisonValue valorConMedida].
				html div class: 'display-inline-flex margin-left-10px'; with: [html output with: aMiemMedidaComparisonValue differencia].
			]
		]
	]