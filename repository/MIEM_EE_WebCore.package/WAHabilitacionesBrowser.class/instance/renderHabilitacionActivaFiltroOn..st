render
renderHabilitacionActivaFiltroOn: html

	html div class: 'display-inline-flex'; with: [
		html form with: [
			html fieldSet with: [
				html radioGroup
					callback: [:value | self addValue: value named: 'option'];
					selected: (self componentValueAt: 'option' ifAbsent: []);
					with: [ :group |
						 #('Habilitaciones Activas' 'Habilitaciones a Controlar' 'Habilitaciones Finalizadas') do: [ :each |
							html div with: [
								html label: [ 
									group radioButton onChange: 'submit()'; value: each.
									html text: each ]
							]
						]
					]
			]
		]
	]