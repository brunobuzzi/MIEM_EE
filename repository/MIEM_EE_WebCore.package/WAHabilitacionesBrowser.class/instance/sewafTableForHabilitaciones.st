tables
sewafTableForHabilitaciones
	| table |

	table := (self hasTableNamed: self habilitacionesTableName) 
		ifTrue: [self getTableNamed: self habilitacionesTableName ifAbsent: []] 
		ifFalse: [self initializeTableForHabilitaciones].

	table selectedObject: selectedHabilitacion.

	^table