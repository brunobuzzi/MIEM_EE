other
getRepresentacionesList

	^(Representacion cache select: [:each | each estaActiva and: [each usuario == self session user]]) asArray