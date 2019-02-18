other
includesFuenteEnergiaNamed: aString

	^self cache anySatisfy: [:each | each nombre asUppercase = aString]