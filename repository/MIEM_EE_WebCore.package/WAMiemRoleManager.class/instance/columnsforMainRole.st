tables
columnsforMainRole

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #nombre title: 'Rol' onClick: [:each | selectedObject := each. selectedUser := nil]) beSortable beSearchable; sortBlock: [:a :b | a nombre <= b nombre]; yourself);
			add: ((SewafReportColumn selector: #tipo title: 'Tipo') beSortable beSearchable; sortBlock: [:a :b | a tipo <= b tipo]; yourself);
			add: ((SewafReportColumn selector: #getApplicationName title: 'Application') beSortable beSearchable; sortBlock: [:a :b | a getApplicationName <= b getApplicationName]; yourself);
			add: self newRemoveRolButton;
			yourself