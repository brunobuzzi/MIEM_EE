other
nombreEmpresa

	instalaciones isEmpty ifTrue: [^'N/A'].

	^(instalaciones asArray at: 1) nombreEmpresa