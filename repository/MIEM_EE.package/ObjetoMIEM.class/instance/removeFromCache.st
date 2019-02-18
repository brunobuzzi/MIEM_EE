other
removeFromCache

	^self class cache remove: self ifAbsent: [ImproperMiemOperationException signal: 'Element no present in the [cache]']