other
renderDifferenceOn: html 
	| mapper postulacion |

	mapper := MiemGenerarPostulacionMapper newOn: model process.
	mapper salvarPostulacion: false. 
	postulacion := mapper executeMapping.

	postulacion medidasEficienciaEnergetica asArray keysAndValuesDo: [:index :medidaEficiencia | 
		html div class: 'medida-comparison'; with: [
			html div class: 'medida-comparison-title'; with: [self renderCommonDataOn: html for: medidaEficiencia index: index.].
			html div with: [
				html div class: 'title'; with: [html strong with: [html output with: 'Fuente Energía']].
				html div class: 'title'; with: [html strong with: [html output with: 'Ahorro TEP']].
				html div class: 'title'; with: [html strong with: [html output with: 'Mejora Emisión CO2']].
			].
			medidaEficiencia escenariosSinMedidas asArray keysAndValuesDo: [:key :escenarioSin | | escenarioCon differencia |
			"	html div class: 'title'; with: [html strong with: [html output with: 'Differencia']]."
				escenarioCon := medidaEficiencia escenariosConMedidas asArray at: key.
				differencia := escenarioSin compararCon: escenarioCon.
				html div with: [
					html div class: 'item con-medida'; with: [html output with: (differencia at: 'fuente energia')].
					html div class: 'item con-medida'; with: [html output with: (differencia at: 'ahorro tep')].
					html div class: 'item con-medida'; with: [html output with: (differencia at: 'mejora emision CO2')].
				].
			]. 
		].
	].