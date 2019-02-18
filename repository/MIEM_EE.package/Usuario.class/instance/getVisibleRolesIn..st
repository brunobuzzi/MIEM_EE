bpm interaction
getVisibleRolesIn: aBpmEnvironment

	^Rol cache select: [:each | each bpmEnvironment == aBpmEnvironment]