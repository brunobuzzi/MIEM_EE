cache
getFuenteEnergiaWithCode: aString ifAbsent: aBlock
	| realName |

	realName := self mappedCodigos at: aString ifAbsent: [^aBlock value].

	^self getFuenteEnergiaNamed: realName ifAbsent: aBlock