other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '(', fuenteEnergia nombre, ',', unidadEnergetica nombre, ',', factorConversionTEP printString, ',', factorEmisionCO2 printString, ')'