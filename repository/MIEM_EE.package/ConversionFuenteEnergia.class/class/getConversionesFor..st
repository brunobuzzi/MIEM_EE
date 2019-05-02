conversiones
getConversionesFor: aFuenteEnergia

	^self cache select: [:each | each fuenteEnergia == aFuenteEnergia]