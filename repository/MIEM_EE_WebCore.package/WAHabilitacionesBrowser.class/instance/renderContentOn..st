other
renderContentOn: html

	instrumentosBatchList items: self currentItems.

	html div class: 'default-gray-table '; with:[html render: (instrumentosBatchList table: self sewafTableFoInstrumentos).].