other
getMonedaNamed: aString

	^self cache detect: [:each | each nombre asUppercase = aString] ifNone: [MiemObjectNotFoundException signal]