other
renderContentOn: html

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Habilitación' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html div with: [
					html label attributeAt: 'for' put: 'inicioPlazo'; with: ('Inicio Plazo' translateIn: self session).
					html dateInput5 attributeAt: 'id' put: 'inicioPlazo'; callback: [:value | self addValue: value named: 'inicioPlazo'].
				].
				html div with: [
					html label attributeAt: 'for' put: 'finPlazo'; with: ('Fin Plazo' translateIn: self session).
					html dateInput5 attributeAt: 'id' put: 'finPlazo'; callback: [:value | self addValue: value named: 'finPlazo'].
				].
				html div with: [
					html label attributeAt: 'for' put: 'vigente'; with: ('Vigente' translateIn: self session).
					html checkbox attributeAt: 'id' put: 'vigente'; callback: [:value | self addValue: value named: 'vigente'].
				].
			].
			html div class: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self habilitarInstrumento]; 
					with: ('Crear Habilitación' translateIn: self session)]
		]
	]