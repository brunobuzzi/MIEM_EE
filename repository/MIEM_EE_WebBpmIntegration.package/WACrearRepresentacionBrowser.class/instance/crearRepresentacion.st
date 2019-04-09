other
crearRepresentacion
	| processDefinition processInstance assignment |

	processDefinition := (self session user getCreationProcessesIn: self session bpmEnvironment) detect: [:each | each processName = 'alta-representacion'] ifNone: [^self].

	processInstance := processDefinition createAndStartProcessInstance: self session user asBpmUser.

	assignment := (self session user getAllAvailableTaskAssignmentsIn: self session bpmEnvironment) detect: [:each | each processId = processInstance id] ifNone: [NoSuchTaskAssignmentException signal: 'Assignment not found !!!'].

	self session user take: assignment.

	lateralCollection add: assignment.
	searchResult add: assignment.

	self selectedLateralItem: nil.
	self selectedLateralItem: assignment.