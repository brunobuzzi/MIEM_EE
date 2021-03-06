other
renderDifferenceOn: html withDifferences: aMiemMedidaComparison 

	html div class: 'medida-comparison'; with: [
		html div class: 'medida-comparison-title'; with: [self renderCommonDataOn: html for: aMiemMedidaComparison].
		html div class: 'title'; with: [html strong with: [html output with: '']].
		html div class: 'title'; with: [html strong with: [html output with: 'Sin Medida']].
		html div class: 'title'; with: [html strong with: [html output with: 'Con Medida']].
		html div class: 'title'; with: [html strong with: [html output with: 'Differencia']].
		aMiemMedidaComparison orderedDifferences do: [:aMiemMedidaComparisonValue |
			html div with: [
				html div class: 'item'; with: [html output with: (aMiemMedidaComparisonValue nombreCampo allButFirst: 12)].
				html div class: 'item sin-medida'; with: [html output with: aMiemMedidaComparisonValue valorSinMedida].
				html div class: 'item con-medida'; with: [html output with: aMiemMedidaComparisonValue valorConMedida].
				aMiemMedidaComparisonValue differencia ifNotNil: [:value | html div class: 'item diferencia'; with: [html output with: value]].
			]
		]
	]