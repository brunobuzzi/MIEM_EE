other
renderSelectRepresentacionOn: html

	html div class: 'default-gray-table'; 
		with: [html legend with: [html strong: ('Seleccionar Representacion' translateIn: self session)].
				html render: self sewafTableForRepresentaciones].

	model representacion ifNil: [^self].

	html div class: 'default-gray-table'; 
		with: [html legend with: [html strong: ('Seleccionar Instalación' translateIn: self session)].
				html render: self sewafTableForInstalaciones].