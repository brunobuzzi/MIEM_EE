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

	^self getDifferences