bpm interaction
getVisibleRolesIn: aBpmEnvironment
	"Answer a collection of users <BpmRole> where the receiver is the admin of each role of the collection"

	^Rol cache select: [:each | each bpmEnvironment == aBpmEnvironment]