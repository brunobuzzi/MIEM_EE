other
sortColumn: sortBlock orderMode: aSymbol

	currentItems := (aSymbol = #asc) 
		ifTrue: [(instrumentosBatchList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [instrumentosBatchList items asSortedCollection: sortBlock].

	instrumentosBatchList items: currentItems