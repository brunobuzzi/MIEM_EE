other
changeHabilitacionInstrumento: unaHabilitacionInstrumento
	| currentObject |

	currentObject := (unaHabilitacionInstrumento == model habilitacionInstrumento)
							ifTrue: [nil]
							ifFalse: [unaHabilitacionInstrumento].

	model habilitacionInstrumento: currentObject.
	self sewafTableForHabilitaciones selectedObject: currentObject.