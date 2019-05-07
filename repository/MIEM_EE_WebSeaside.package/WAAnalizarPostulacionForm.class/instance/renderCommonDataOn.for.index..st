other
renderCommonDataOn: html for: unaMedidaEficienciaEnergetica index: index

	html div class: 'media-comparision-common-data'; with: [html strong with: index].

	html div class: 'media-comparision-common-data'; with: [
		html div class: 'media-comparision-key'; with: [html strong with: [html output with: 'Uso Principal']].
		html div class: 'media-comparision-value'; with: [html strong with: [html output with: unaMedidaEficienciaEnergetica usoPrincipal nombre]].
		html div class: 'media-comparision-key'; with: [html strong with: [html output with: 'Moneda']].
		html div class: 'media-comparision-value'; with: [html strong with: [html output with: unaMedidaEficienciaEnergetica moneda nombre]].
		html div class: 'media-comparision-key'; with: [html strong with: [html output with: 'Inversión Total']].
		html div class: 'media-comparision-value'; with: [html strong with: [html output with: unaMedidaEficienciaEnergetica inversionTotal]].
		html div class: 'media-comparision-key'; with: [html strong with: [html output with: 'Es Operativa']].
		html div class: 'media-comparision-value'; with: [html strong with: [html output with: unaMedidaEficienciaEnergetica esOperativa]].
		html div class: 'media-comparision-key'; with: [html strong with: [html output with: 'Fecha Inicio Operación']].
		html div class: 'media-comparision-value'; with: [html strong with: [html output with: unaMedidaEficienciaEnergetica fechaInicioOperacion]].
		html div class: 'media-comparision-key'; with: [html strong with: [html output with: 'Grado Implementación']].
		html div class: 'media-comparision-value'; with: [html strong with: [html output with: unaMedidaEficienciaEnergetica gradoImplementacion]].
	].