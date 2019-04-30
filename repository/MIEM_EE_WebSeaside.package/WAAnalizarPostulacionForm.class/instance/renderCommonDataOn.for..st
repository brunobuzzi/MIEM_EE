other
renderCommonDataOn: html for: aMiemMedidaComparison

	html div class: 'media-comparision-common-data'; with: [html strong with: aMiemMedidaComparison nombreMedida].
	aMiemMedidaComparison commonData keysAndValuesDo: [:key :value | 
		html div class: 'media-comparision-common-data'; with: [
			html div class: 'media-comparision-key'; with: [html strong with: [html output with: (key allButFirst: 12)]].
			html div class: 'media-comparision-value'; with: [html strong with: [html output with: value]].
		]
	]