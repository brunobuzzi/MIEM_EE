tables
initializeSewafTableRolsOfUser
	| table |

	table := (SewafTableReport summary: 'Users')
		"rows: selectedObject roles; "
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #nombre title: 'Rol');
						add: (SewafReportColumn selector: #tipo title: 'Tipo');
						add: (SewafReportColumn selector: #isAdmin title: 'Admin');
						add: (SewafReportColumn selector: #getApplicationName title: 'Application');
						add: self newRemoveRolFromUserButton;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'RolsOfSelectedUser'.