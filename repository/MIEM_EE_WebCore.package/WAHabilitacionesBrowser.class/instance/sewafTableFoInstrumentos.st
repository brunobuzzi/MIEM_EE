other
sewafTableFoInstrumentos
	| table |

	table := (self hasTableNamed: self tableName) 
		ifTrue: [self getTableNamed: self tableName ifAbsent: []] 
		ifFalse: [self initializeTableFoInstrumentos].

	table selectedObject: selectedObject.

	^table