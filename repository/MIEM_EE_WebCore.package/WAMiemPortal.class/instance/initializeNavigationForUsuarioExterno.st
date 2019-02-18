other
initializeNavigationForUsuarioExterno
	| subMenu2 |

	navigation := SewafPortalMenu new iconLibrary: MIEMIconLibrary.

	subMenu2 := (SewafSubMenuItem label: 'Instrumentos' icon: #foldermydocuments32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Habilitaciones' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Postulaciones' command: #showUnassignedTasks);
		yourself.
	navigation
		addItem: subMenu2