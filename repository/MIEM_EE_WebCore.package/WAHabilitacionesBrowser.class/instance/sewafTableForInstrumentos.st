tables
sewafTableForInstrumentos
	| table |

	table := (self hasTableNamed: self tableName) 
		ifTrue: [self getTableNamed: self tableName ifAbsent: []] 
		ifFalse: [self initializeTableForInstrumentos].

	table selectedObject: selectedObject.

	^table