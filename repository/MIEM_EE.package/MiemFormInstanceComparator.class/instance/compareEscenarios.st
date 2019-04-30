other
compareEscenarios
	| medidaComparison |

	comparisons := Dictionary new.
	medidaComparison := Dictionary new.

	self fieldsToCompareScenarioSinMedida keysAndValuesDo: [:index :escSinMedidaFieldName | | escConMedidaFieldName comparison |
		escConMedidaFieldName := self fieldsToCompareScenarioConMedida at: index.
		comparison := MiemFormFieldComparison 
								newFor: escSinMedidaFieldName 
								with: (process getValueOfProcessField: escSinMedidaFieldName)
								with: (process getValueOfProcessField: escConMedidaFieldName).

		comparisons at: escSinMedidaFieldName put: comparison.		
	].

	self getDifferences keysAndValuesDo: [:fieldName :dictionary | | comp |
		dictionary keysAndValuesDo: [:iteration :values | 
			comp := medidaComparison at: iteration ifAbsentPut: [MiemMedidaComparison newFor: iteration].
			comp atCommonData: 'escSinMedidaUsoPrincipal' put: ((process getValueOfProcessField: 'escSinMedidaUsoPrincipal') at: iteration).
			comp atCommonData: 'escSinMedidaFechaInicioOperacion' put: ((process getValueOfProcessField: 'escSinMedidaFechaInicioOperacion') at: iteration).
			comp atCommonData: 'escSinMedidaEsOperativa' put: ((process getValueOfProcessField: 'escSinMedidaEsOperativa') at: iteration).
			comp atCommonData: 'escSinMedidaVidaUtil' put: ((process getValueOfProcessField: 'escSinMedidaVidaUtil') at: iteration).
			comp atCommonData: 'escSinMedidaInversionTotal' put: ((process getValueOfProcessField: 'escSinMedidaInversionTotal') at: iteration).
			comp atCommonData: 'escSinMedidaMoneda' put: ((process getValueOfProcessField: 'escSinMedidaMoneda') at: iteration).
			comp addDifference: (MiemMedidaComparisonValue newFor: fieldName value1: (values at: 1) value2: (values at: 2)).
			differences add: comp.
		].
	].

	differences := differences asOrderedCollection