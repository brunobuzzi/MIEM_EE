other
columnsForItems

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #nombre title: 'Tarifa' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			add: self removeItemButton;
			yourself