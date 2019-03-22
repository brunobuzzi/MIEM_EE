bpm interaction
getAllAvailableTaskAssignmentsIn: aBpmEnvironment
	"Answer a collection with all available assignments <BpmTaskAssignment> for the receiver"

	^self asBpmUser getAllAvailableTaskAssignmentsIn: aBpmEnvironment