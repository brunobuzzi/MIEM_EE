other
eur

	^self cache detect: [:each | each nombre = 'EUR'] ifNone: [MiemObjectNotFoundException signal]