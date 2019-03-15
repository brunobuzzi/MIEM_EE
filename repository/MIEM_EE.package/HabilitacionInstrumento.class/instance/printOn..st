other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', self printNombreInstrumento, ': ', inicioPlazo printString, ' to ', finPlazo printString,']'