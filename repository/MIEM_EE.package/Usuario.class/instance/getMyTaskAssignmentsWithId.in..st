bpm interaction
getMyTaskAssignmentsWithId: processId in: aBpmEnvironment
	"Answer a collection with all assignments <BpmTaskAssignment> where the <BpmProcess> id is equal to <processId>"

	^self asBpmUser getMyTaskAssignmentsWithId: processId in: aBpmEnvironment