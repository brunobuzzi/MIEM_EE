other
usd

	^self cache detect: [:each | each nombre = 'USD'] ifNone: [MiemObjectNotFoundException signal]