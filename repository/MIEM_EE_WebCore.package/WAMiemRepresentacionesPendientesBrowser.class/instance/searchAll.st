other
searchAll

	unassignedTask := (self session user getAllAvailableTaskAssignmentsIn: self session bpmEnvironment) select: [:each | each processName = 'alta-representacion']