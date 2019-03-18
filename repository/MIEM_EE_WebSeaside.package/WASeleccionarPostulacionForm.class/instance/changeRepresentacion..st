other
changeRepresentacion: unaRepresentacion
	| currentObject |

	currentObject := (unaRepresentacion == model representacion)
							ifTrue: [nil]
							ifFalse: [unaRepresentacion].

	model representacion: currentObject.
	model instalacion: nil.

	self sewafTableForRepresentaciones selectedObject: currentObject.