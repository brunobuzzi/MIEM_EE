other
initializeNavigationForUsuarioInterno
	| subMenu1 subMenu2 subMenu3 subMenu4 |

	navigation := SewafPortalMenu new iconLibrary: MIEMIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'Usuarios y Roles' icon: #usersettings32Png)
		set24Icon: #worksinprogress24Png;
		addItem: (SewafCommandItem label: 'Administrar Usuarios' command: #showUsuarios);
		addItem: (SewafCommandItem label: 'Administrar Roles' command: #showRoles);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Representacion' icon: #bluebox32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Tomar Representación' command: #showRepresentacionesPendientes);
		addItem: (SewafCommandItem label: 'Aprobar Representación' command: #showAprobarRepresentaciones);
		addItem: (SewafCommandItem label: 'Ver Representación' command: #showVerRepresentaciones);
		yourself.
	subMenu3 := (SewafSubMenuItem label: 'Instrumentos' icon: #foldermydocuments32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Habilitaciones' command: #showHabilitacionesBrowser);
		addItem: (SewafCommandItem label: 'Postulaciones Actuales' command: #showPostulacionesActuales);
		addItem: (SewafCommandItem label: 'Postulaciones Pendientes' command: #showPostulacionesPendientes);
		addItem: (SewafCommandItem label: 'Tareas Finalizadas' command: #showPostulacionesFinalizadas);
		yourself.
	subMenu4 := (SewafSubMenuItem label: 'Paramétricas' icon: #setting32Png)
		set24Icon: #processadd24Png;
		addItem: (SewafCommandItem label: 'Autoconsumo' command: #showAutoconsumo);
		addItem: (SewafCommandItem label: 'CIIU' command: #showCIIU);
		addItem: (SewafCommandItem label: 'Fuentes de Energía' command: #showFuentesDeEnergia);
		addItem: (SewafCommandItem label: 'Instrumentos' command: #showInstrumentos);
		addItem: (SewafCommandItem label: 'Monedas' command: #showMonedas);
		addItem: (SewafCommandItem label: 'Tarifa de Referencia' command: #showTarifasDeReferencia);
		addItem: (SewafCommandItem label: 'Conversiones' command: #showConversiones);
		yourself.
	navigation
		addItem: subMenu2;
		addItem: subMenu3;
		addItem: subMenu1;
		addItem: subMenu4.