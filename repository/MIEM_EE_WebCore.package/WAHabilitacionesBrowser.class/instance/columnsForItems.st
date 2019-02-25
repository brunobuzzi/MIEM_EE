other
columnsForItems

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #nombre title: 'Nombre' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			"add: self removeItemButton;"
			yourself