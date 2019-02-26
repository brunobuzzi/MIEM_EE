render
renderContentOn: html

	instrumentosBatchList items: self currentItems.

	html div class: 'default-gray-table display-inline-flex'; with:[html render: (instrumentosBatchList table: self sewafTableForInstrumentos).].

	self renderHabilitacionesOn: html.