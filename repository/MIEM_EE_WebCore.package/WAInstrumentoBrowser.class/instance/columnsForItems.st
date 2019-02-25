other
columnsForItems

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #nombre title: 'Nombre' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			add: ((SewafReportColumn selector: #descripcion title: 'Descripción') beSortable beSearchable; sortBlock: [:a :b | a descripcion <= b descripcion]; yourself);
			add: self removeItemButton;
			yourself