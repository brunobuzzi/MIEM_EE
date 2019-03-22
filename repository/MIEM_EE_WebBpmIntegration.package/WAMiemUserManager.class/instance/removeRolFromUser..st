operations
removeRolFromUser: aBpmRole

	userRolesBatchedList remove: aBpmRole.

	aBpmRole ungrantUsuario: selectedObject.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolsOfSelectedUser' ifAbsent: [^self]) 
				information: ('Rol Desasignado !!!' translateIn: self session)
				color: 'green'