tables
sewafTableForRols
	"Table with all Users that are NOT present in the role <selectedObject> "

	^(SewafBooleanSelectTable parent: self)
		summary: 'Users to Assign';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		buttonLabel: ('Assign and Close' translateIn: self session);
		booleanSelector: #booleanValueForRol:;
		callbackSelector: #modifyRole:value:;
		"rows: (self session user getVisibleRoles difference: selectedObject roles); "
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #nombre title: 'Rol');
						add: (SewafReportColumn selector: #tipo title: 'Tipo');
						add: (SewafReportColumn selector: #isAdmin title: 'Admin?');
						add: (SewafReportColumn selector: #getApplicationName title: 'Application');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself