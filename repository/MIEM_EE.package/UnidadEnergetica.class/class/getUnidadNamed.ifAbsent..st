cache
getUnidadNamed: aString ifAbsent: aBlock

	^self cache detect: [:each | each nombre = aString] ifNone: aBlock