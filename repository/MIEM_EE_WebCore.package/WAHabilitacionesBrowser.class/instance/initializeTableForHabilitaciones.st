tables
initializeTableForHabilitaciones
	| table |

	table := (SewafSelectTableReport parent: self)
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: self columnsForHabilitaciones;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: self habilitacionesTableName.