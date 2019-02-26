render
renderHabilitacionesOn: html

	self selectedInstrumentoOrNil  ifNil: [^self].

	self selectedInstrumentoOrNil habilitaciones isEmpty ifTrue: [^self].

	self renderHabilitacionActivaFiltroOn: html.

	self renderHabilitacionesDeInstrumentoOn: html.