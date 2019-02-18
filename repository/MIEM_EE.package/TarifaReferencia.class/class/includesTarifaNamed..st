other
includesTarifaNamed: aString

	^self cache anySatisfy: [:each | each nombre asUppercase = aString]