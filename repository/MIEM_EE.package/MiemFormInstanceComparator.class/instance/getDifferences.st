other
getDifferences
	| medidas comparisionDictionary |

	comparisionDictionary := Dictionary new.

	medidas := (comparisons at: 'escSinMedidaNombre') value1.
	medidas keysAndValuesDo: [:index :fieldName |
		comparisionDictionary at: fieldName put: Dictionary new.
		self fieldsToCompareScenarioSinMedida do: [:each | | value1 value2 |
			value1 := (comparisons at: each) value1 at: index.
			value2 := (comparisons at: each) value2 at: index.
			(comparisionDictionary at: fieldName) at: each put: (Array with: value1 with: value2).
		] 
	].

	^comparisionDictionary