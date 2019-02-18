other
includesAutoconsumoNamed: aString

	^self cache anySatisfy: [:each | each nombre asUppercase = aString]