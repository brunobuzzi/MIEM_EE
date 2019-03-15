other
sewafTableForHabilitaciones
	| table |

	table := (self hasTableNamed: 'habilitaciones') 
		ifTrue: [self getTableNamed: 'habilitaciones' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForHabilitaciones].

	table	selectedObject: self model.

	^table