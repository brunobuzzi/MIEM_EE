other
sewafTableForInstalaciones
	| table |

	table := (self hasTableNamed: 'instalaciones') 
		ifTrue: [self getTableNamed: 'instalaciones' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForInstalaciones].

	table	selectedObject: self model instalacion.

	^table