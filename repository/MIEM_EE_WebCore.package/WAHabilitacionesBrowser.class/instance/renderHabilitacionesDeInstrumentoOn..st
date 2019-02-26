render
renderHabilitacionesDeInstrumentoOn: html

	habilitacionesBatchList items: self selectedInstrumentoOrNil habilitaciones.

	html div class: 'default-gray-table display-inline-flex'; with:[html render: (habilitacionesBatchList table: self sewafTableForHabilitaciones).].