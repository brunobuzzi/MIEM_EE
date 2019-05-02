conversiones
getConversionFor: aFuenteEnergia in: aDate
	| orderedByFecha conversion |

	orderedByFecha := (self cache select: [:each | each fuenteEnergia == aFuenteEnergia]) asSortedCollection: [:a :b | a fechaActualizacion >=  b fechaActualizacion].

	orderedByFecha isEmpty ifTrue: [MiemConversionException signal: 'No [Conversion] found'].

	orderedByFecha do: [:each | 
		(each fechaActualizacion < aDate) ifTrue: [conversion := each].
	].

	conversion ifNil: [^orderedByFecha first].

	^conversion