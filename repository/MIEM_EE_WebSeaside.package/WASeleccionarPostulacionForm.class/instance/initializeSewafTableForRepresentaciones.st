other
initializeSewafTableForRepresentaciones
	| table |

	table := (SewafSelectTableReport parent: self)
		rows: self getRepresentacionesList; 
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: ((SewafReportColumn selector: #nombreEmpresa title: 'Empresa' onClick: [:each | self changeRepresentacion: each]) beSortable; sortBlock: [:a :b | a nombreEmpresa <= b nombreEmpresa]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #nombreUsuario title: 'Usuario') beSortable; sortBlock: [:a :b | a nombreUsuario <= b nombreUsuario]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #apellido title: 'Apellido') beSortable; sortBlock: [:a :b | a apellido <= b apellido]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #nombre title: 'Nombre') beSortable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
						add: ((SewafReportColumn selector: #tipo title: 'Tipo') beSortable; sortBlock: [:a :b | a tipo <= b tipo]; yourself);
						add: ((SewafReportColumn selector: #esTotal title: 'Es Total') beSortable; sortBlock: [:a :b | a esTotal <= b esTotal]; yourself);
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'representaciones'.