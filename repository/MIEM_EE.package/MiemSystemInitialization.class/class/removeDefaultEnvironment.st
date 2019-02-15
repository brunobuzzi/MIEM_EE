other
removeDefaultEnvironment
	| defaultEnvironment |

	defaultEnvironment := BpmEnvironment getEnvironmentNamed: 'MIEM' ifNone: [BpmEnvironmentMatchFailedException signal: 'No [MIEM] Environment'].

	defaultEnvironment applications asArray do: [:each | defaultEnvironment unregisterApplication: each].
	defaultEnvironment users asArray do: [:each | defaultEnvironment unregisterUser: each].

	defaultEnvironment removeFromCache.

	Usuario initializeCache.