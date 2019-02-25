other
habilitarInstrumento
	"Date format: '2019-04-31'"
	model 
		crearHabilitacionDesde: (Date fromString: (self componentValueAt: 'inicioPlazo' ifAbsent: [^self]) usingFormat: #(3 2 1 $- 1 1 $: false false false))
		hasta: (Date fromString: (self componentValueAt: 'finPlazo' ifAbsent: [^self]) usingFormat: #(3 2 1 $- 1 1 $: false false false))
		vigente: (self componentValueAt: 'vigente' ifAbsent: [^self])