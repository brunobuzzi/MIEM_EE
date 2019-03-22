operations
removeRoleFromUser: aBpmRole

	aBpmRole ungrantUsuario: selectedUser.

	rolesWithSelectedUserBatchList remove: aBpmRole.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolesOfSelectedUser' ifAbsent: [^self]) 
			information: ('Rol Desasignado !!!' translateIn: self session)
			color: 'green'.