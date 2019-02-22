other
isEnabledToShowElementNamed: aString

	(aString = 'search-area') ifTrue: [^false].

	^super isEnabledToShowElementNamed: aString