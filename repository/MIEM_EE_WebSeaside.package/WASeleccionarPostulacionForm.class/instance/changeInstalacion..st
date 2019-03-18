other
changeInstalacion: unaInstalacion
	| currentObject |

	currentObject := (unaInstalacion == model instalacion)
							ifTrue: [nil]
							ifFalse: [unaInstalacion].

	model instalacion: currentObject.
	self sewafTableForInstalaciones selectedObject: currentObject.