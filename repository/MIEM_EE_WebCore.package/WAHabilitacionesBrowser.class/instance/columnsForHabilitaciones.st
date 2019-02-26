tables
columnsForHabilitaciones

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #inicioPlazo title: 'Inicio' onClick: [:each | selectedHabilitacion := each]) beSortable beSearchable; sortBlock: [:a :b | a inicioPlazo <= b inicioPlazo]; yourself);
			add: ((SewafReportColumn selector: #finPlazo title: 'Fin') beSortable beSearchable; sortBlock: [:a :b | a finPlazo <= b finPlazo]; yourself);
			add: ((SewafReportColumn selector: #estaVigente title: 'Vigente') beSortable beSearchable; sortBlock: [:a :b | a estaVigente <= b estaVigente]; yourself);
			add: ((SewafReportColumn selector: #estaActiva title: 'Activa') beSortable beSearchable; sortBlock: [:a :b | a estaActiva <= b estaActiva]; yourself);
			yourself