other
initializeNavigationForUsuarioExterno
	| subMenu1 subMenu2 |

	navigation := SewafPortalMenu new iconLibrary: MIEMIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'Representaciones' icon: #bluebox32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Crear Representacion' command: #showCrearRepresentacion);
		addItem: (SewafCommandItem label: 'Representaciones Pendientes' command: #showRepresentacionesPendientes);
		addItem: (SewafCommandItem label: 'Ver Representaciones' command: #showVerRepresentaciones);
		yourself.

	subMenu2 := (SewafSubMenuItem label: 'Instrumentos' icon: #foldermydocuments32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Postulaciones Actules' command: #showPostulacionesActuales);
		addItem: (SewafCommandItem label: 'Postulaciones Pendientes' command: #showPostulacionesPendientes);
		addItem: (SewafCommandItem label: 'Tareas Finalizadas' command: #showPostulacionesFinalizadas);
		yourself.
	navigation
		addItem: subMenu1;
		addItem: subMenu2.