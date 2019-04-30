other
getDifferences
	| comparisionDictionary |

	comparisionDictionary := Dictionary new.

	comparisons keysAndValuesDo: [:fieldName :fieldComparision |
		comparisionDictionary at: fieldName put: Dictionary new.
		fieldComparision value1 keysAndValuesDo: [:index :fieldValue | | value1 value2 |
			value1 := fieldComparision value1 at: index.
			value2 := fieldComparision value2 at: index.
			(comparisionDictionary at: fieldName) at: index put: (Array with: value1 with: value2).
		] 
	].

	^comparisionDictionary