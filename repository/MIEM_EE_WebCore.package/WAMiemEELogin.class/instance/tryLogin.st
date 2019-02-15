other
tryLogin

	super tryLogin.

	loginFailed ifTrue: [^self].

	self session bpmEnvironment: (BpmEnvironment getEnvironmentNamed: 'MIEM' ifNone: [BpmEnvironmentMatchFailedException signal: 'No [MIEM] Environment']).

	self showPortalFor: self session user.