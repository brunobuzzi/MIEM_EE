other
initializeSewafTableForInstalaciones
	| table |

	table := (SewafSelectTableReport parent: self)
		rows: self getInstalacionesList; 
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: ((SewafReportColumn selector: #nombreEmpresa title: 'Empresa' onClick: [:each | self changeInstalacion: each]) beSortable; sortBlock: [:a :b | a nombreEmpresa <= b nombreEmpresa]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #nombre title: 'Nombre') beSortable; sortBlock: [:a :b | a nombre <= b nombre]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #departamento title: 'Departamento') beSortable; sortBlock: [:a :b | a departamento <= b departamento]; yourself);
						add: ((SewafReportColumn selector: #ciudad title: 'Ciudad') beSortable; sortBlock: [:a :b | a ciudad <= b ciudad]; yourself);
						add: ((SewafReportColumn selector: #localidad title: 'Localidad') beSortable; sortBlock: [:a :b | a localidad <= b localidad]; yourself);
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'instalaciones'.