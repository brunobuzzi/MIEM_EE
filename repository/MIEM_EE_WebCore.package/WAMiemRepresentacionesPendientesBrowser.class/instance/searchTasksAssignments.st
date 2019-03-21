other
searchTasksAssignments
	| matrix |

	((self hasSearchValueAt: 'application') and: [(self hasSearchValueAt: 'role')]) 
	ifTrue: [matrix := self getAvailableTasksMatrixClass getMatrixForApplicationNamed: (searchValues at: 'application').
				unassignedTask := (matrix getAvailableTasksFor: (searchValues at: 'role')) select: [:each | each processName = 'alta-representacion'].]
	ifFalse: [self searchAll].