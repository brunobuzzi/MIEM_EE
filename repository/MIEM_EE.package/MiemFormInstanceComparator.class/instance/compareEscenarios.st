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
			comp atCommonData: 'medidaUsoPrincipal' put: ((process getValueOfProcessField: 'medidaUsoPrincipal') at: iteration).
			comp atCommonData: 'medidaFechaInicioOperacion' put: ((process getValueOfProcessField: 'medidaFechaInicioOperacion') at: iteration).
			comp atCommonData: 'medidaEsOperativa' put: ((process getValueOfProcessField: 'medidaEsOperativa') at: iteration).
			comp atCommonData: 'medidaVidaUtil' put: ((process getValueOfProcessField: 'medidaVidaUtil') at: iteration).
			comp atCommonData: 'medidaInversionTotal' put: ((process getValueOfProcessField: 'medidaInversionTotal') at: iteration).
			comp atCommonData: 'medidaMoneda' put: ((process getValueOfProcessField: 'medidaMoneda') at: iteration).
			comp addDifference: (MiemMedidaComparisonValue newFor: fieldName value1: (values at: 1) value2: (values at: 2)).
			differences add: comp.
		].
	].

	^differences := differences asOrderedCollection