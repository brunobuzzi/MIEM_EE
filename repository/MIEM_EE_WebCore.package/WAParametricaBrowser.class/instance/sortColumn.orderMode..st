other
sortColumn: sortBlock orderMode: aSymbol

	currentItems := (aSymbol = #asc) 
		ifTrue: [(batchList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [batchList items asSortedCollection: sortBlock].

	batchList items: currentItems