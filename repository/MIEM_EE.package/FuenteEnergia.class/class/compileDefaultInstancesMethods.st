cache
compileDefaultInstancesMethods

	self validNamesAndMethods do: [:eachArray | | stream |
		stream := WriteStream on: String new.
		stream nextPutAll: eachArray second, String lf, String lf, String tab.
		stream nextPutAll: '^self getFuenteEnergiaNamed: ''', eachArray first, ''' ifAbsent: [MiemObjectNotFoundException signal].'.
		self class compile: stream contents.
	].