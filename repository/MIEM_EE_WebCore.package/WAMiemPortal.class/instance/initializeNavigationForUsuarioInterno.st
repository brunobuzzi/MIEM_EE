other
initializeNavigationForUsuarioInterno
	| subMenu1 subMenu2 subMenu3 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'Usuarios y Roles' icon: #worksinprogress32Png)
		set24Icon: #worksinprogress24Png;
		addItem: (SewafCommandItem label: 'Administrar Usuarios' command: #showCurrentProcess);
		addItem: (SewafCommandItem label: 'Administrar Roles' command: #showFinishedProcess);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Instrumentos' icon: #folderscheduledtasks32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Habilitaciones' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Postulaciones' command: #showUnassignedTasks);
		yourself.
	subMenu3 := (SewafSubMenuItem label: 'Paramétricas' icon: #processadd32Png)
		set24Icon: #processadd24Png;
		addItem: (SewafCommandItem label: 'Autoconsumo' command: #showPinnedProcesses);
		addItem: (SewafCommandItem label: 'CIIU' command: #showAvailableProcesses);
		addItem: (SewafCommandItem label: 'Fuentes de Energía' command: #showGrantedTasks);
		addItem: (SewafCommandItem label: 'Monedas' command: #showGrantedTasks);
		addItem: (SewafCommandItem label: 'Tarifa de Referencia' command: #showGrantedTasks);
		yourself.
	navigation addItem: subMenu1;
		addItem: subMenu2;
		addItem: subMenu3.