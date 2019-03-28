other
getMedidaWithCode: aString

	^self cache detect: [:each | each code = aString] ifNone: []