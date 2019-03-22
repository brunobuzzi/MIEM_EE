operations
removeUserFromRole: unUsuario

	selectedObject ungrantUsuario: unUsuario.

	rolesWithSelectedUserBatchList remove: unUsuario.

	self closeAllInformationComponents.
	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
			information: ('User Desasignado !!!' translateIn: self session)
			color: 'green'.

	(selectedObject cantidadUsuarios = 0) ifFalse: [^self].

	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
		atInformationComponent: 2 
		put: ('Importante este Rol NO tiene Usuarios !!!' translateIn: self session) 
		withColor: 'red'