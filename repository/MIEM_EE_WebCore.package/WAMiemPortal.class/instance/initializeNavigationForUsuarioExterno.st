other
initializeNavigationForUsuarioExterno
	| subMenu1 subMenu2 |

	navigation := SewafPortalMenu new iconLibrary: MIEMIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'Representaciones' icon: #bluebox32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Crear Representacion' command: #showCrearRepresentacion);
		addItem: (SewafCommandItem label: 'Ver Representaciones' command: #showUnassignedTasks);
		yourself.

	subMenu2 := (SewafSubMenuItem label: 'Instrumentos' icon: #foldermydocuments32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Postular' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Postulaciones Actules' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Postulaciones Cerradas' command: #showUnassignedTasks);
		yourself.
	navigation
		addItem: subMenu1;
		addItem: subMenu2.