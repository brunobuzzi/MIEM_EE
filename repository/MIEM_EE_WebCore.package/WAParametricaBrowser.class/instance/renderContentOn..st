other
renderContentOn: html

	self canAddParametrics ifTrue: [html div with: [self renderAddButtonOn: html]].

	batchList items: self currentItems.

	html div class: 'default-gray-table '; with:[html render: (batchList table: self sewafTableFoItems).].