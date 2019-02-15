other
getUserNamed: aString ifAbsent: aBlock

	^self cache at: aString ifAbsent: aBlock