other
sewafTableFoItems
	| table |

	table := (self hasTableNamed: self tableName) 
		ifTrue: [self getTableNamed: self tableName ifAbsent: []] 
		ifFalse: [self initializeSewafTableForItems].

	^table