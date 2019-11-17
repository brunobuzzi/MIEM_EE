bpm interaction
finalizeAssignment: aBpmTaskAssignment takeNext: aBoolean
	"The receiver finalize the assignment <aBpmTaskAssignment>"

	self asBpmUser finalizeAssignmentAndResume: aBpmTaskAssignment takeNext: aBoolean