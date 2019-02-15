other
columnsForItems

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #nombre title: 'Moneda' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			add: ((SewafReportColumn selector: #pais title: 'Pais') beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			add: self removeItemButton;
			yourself