other
renderContentOn: html

	batchList items: self currentItems.

	html div class: 'default-gray-table '; with:[html render: (batchList table: self sewafTableFoItems).].