searching
searchRoles
	| roles |

	selectedObject := nil.

	model nombre notEmpty ifTrue: [^self searchByName].

	selectedApplication ifNotNil: [^self searchByApplication].

	roles :=  self session user getVisibleRolesIn: self session bpmEnvironment.

	rolesBatchList items: roles.
	
	^roles