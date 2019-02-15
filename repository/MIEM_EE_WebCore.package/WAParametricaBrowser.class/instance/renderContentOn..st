other
renderContentOn: html

	batchList items: (currentItems ifNil: [self getItemsList] ifNotNil: [currentItems]).

	html div class: 'default-gray-table '; with:[html render: (batchList table: self sewafTableFoItems).].