other
columnsForItems

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #numero title: 'Número' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a numero <= b numero]; yourself);
			add: ((SewafReportColumn selector: #nombre title: 'CIIU') beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			add: self removeItemButton;
			yourself