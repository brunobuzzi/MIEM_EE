other
searchTasksAssignments
	| matrix |

	((self hasSearchValueAt: 'application') and: [(self hasSearchValueAt: 'role')]) 
	ifTrue: [matrix := self defaultAvailableTasksMatrixClass getMatrixForApplicationNamed: (searchValues at: 'application').
				unassignedTask := (matrix getAvailableTasksFor: (searchValues at: 'role')) select: [:each | each processName = 'postular-a-instrumento'].]
	ifFalse: [self searchAll].