other
getMonedaNamed: aString

	^self cache detect: [:each | each nombre asUppercase = aString asUppercase] ifNone: [MiemObjectNotFoundException signal]