other
compareEscenarios

	comparisons := Dictionary new.

	self fieldsToCompareScenarioSinMedida keysAndValuesDo: [:index :escSinMedidaFieldName | | escConMedidaFieldName comparison |
		escConMedidaFieldName := self fieldsToCompareScenarioConMedida at: index.
		comparison := MiemFormFieldComparison 
								newFor: escSinMedidaFieldName 
								with: (process getValueOfProcessField: escSinMedidaFieldName)
								with: (process getValueOfProcessField: escConMedidaFieldName).

		comparisons at: escSinMedidaFieldName put: comparison.		
	].

	self getDifferences keysAndValuesDo: [:nombreMedida :dictionary | | medidaComparison |
		medidaComparison := MiemMedidaComparison newFor: nombreMedida.
		dictionary keysAndValuesDo: [:fieldName :values |
			medidaComparison addDifference: (MiemMedidaComparisonValue newFor: fieldName value1: (values at: 1) value2: (values at: 2)).
		].
		differences add: medidaComparison.
	]