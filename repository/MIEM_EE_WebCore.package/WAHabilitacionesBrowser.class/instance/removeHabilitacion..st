tables
removeHabilitacion: unaHabilitacionInstrumento

	(self componentValueAt: 'removeHabilitacion') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self selectedInstrumentoOrNil removerHabilitacion: unaHabilitacionInstrumento