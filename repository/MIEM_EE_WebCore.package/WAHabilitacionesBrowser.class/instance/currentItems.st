other
currentItems

	^currentItems ifNil: [self getItemsList] ifNotNil: [currentItems]