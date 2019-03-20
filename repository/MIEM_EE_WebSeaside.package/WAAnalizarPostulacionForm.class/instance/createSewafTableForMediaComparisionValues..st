other
createSewafTableForMediaComparisionValues: index
	| table |

	table := (SewafSelectTableReport parent: self)
		rows: self getHabilitacionesList; 
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: ((SewafReportColumn selector: #printNombreInstrumento title: 'Instrumento' onClick: [:each | self changeHabilitacionInstrumento: each]) beSortable; sortBlock: [:a :b | a name <= b name]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #inicioPlazo title: 'Inicio Plazo') beSortable; sortBlock: [:a :b | a inicioPlazo <= b inicioPlazo]; yourself);
						add: ((SewafReportColumn selector: #finPlazo title: 'Fin Plazo') beSortable; sortBlock: [:a :b | a finPlazo <= b finPlazo]; yourself);
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: ('comparision', index printString).