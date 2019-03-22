search operation
searchMatchingAssignmentsFor: procName in: appName
	"Answer a collection of <BpmTaskAssignment> for the process named <procName> in application <appName>"

	(appName isNil or: [appName isEmpty]) 
	ifTrue: [^searchResult := self getQueryOperation getCurrentTaskAssignmentsInProcess: 'postular-a-instrumento'].

	"the user has selected <anApplication>"
	searchResult := self getQueryOperation getTaskAssignmentsInApplication: appName andProcess: 'postular-a-instrumento' isCurrent: self modeIsCurrentTasks.