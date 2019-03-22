search operation
searchMatchingAssignmentsFor: procName in: appName
	"Answer a collection of <BpmTaskAssignment> for the process named <procName> in application <appName>"

	(appName isNil or: [appName isEmpty]) 
	ifTrue: [^searchResult := self getQueryOperation getFinishedTaskAssignmentsInProcess: 'alta-representacion'].

	"the user has selected <anApplication>"
	searchResult := self getQueryOperation getTaskAssignmentsInApplication: appName andProcess: 'alta-representacion' isCurrent: self modeIsCurrentTasks.