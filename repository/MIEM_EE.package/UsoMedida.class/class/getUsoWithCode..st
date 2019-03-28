other
getUsoWithCode: aString

	^self cache detect: [:each | each code = aString] ifNone: []