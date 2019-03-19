other
compareEscenarios
	| comparison |

	comparison := Dictionary new.

	self fieldsToCompareScenarioSinMedida keysAndValuesDo: [:index :escSinMedidaFieldName | | escConMedidaFieldName |
		escConMedidaFieldName := self fieldsToCompareScenarioConMedida at: index.
		comparison at: escSinMedidaFieldName put: (Array with: (process getBasicValueOfProcessField: escSinMedidaFieldName) with: (process getBasicValueOfProcessField: escConMedidaFieldName)).		
	].

	^comparison