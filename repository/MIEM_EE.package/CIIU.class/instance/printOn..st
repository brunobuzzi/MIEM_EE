other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '(', numero printString, ': ', nombre, ')'