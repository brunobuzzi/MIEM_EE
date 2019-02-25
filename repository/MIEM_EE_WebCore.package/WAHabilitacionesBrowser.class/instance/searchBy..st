other
searchBy: aSelector

	currentItems := (self getItemsList select: [:each | (self componentValueAt: 'searchValue') match: (each perform: aSelector)])