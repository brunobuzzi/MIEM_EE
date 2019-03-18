other
renderSelectInstrumentoOn: html

	html div class: 'default-gray-table'; 
		with: [html legend with: [html strong: ('Seleccionar Instrumento' translateIn: self session)].
				html render: self sewafTableForHabilitaciones].