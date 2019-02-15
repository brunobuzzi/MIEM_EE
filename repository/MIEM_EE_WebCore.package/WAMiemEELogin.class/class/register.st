other
register
	| application |

	WAAdmin unregister: 'miem-ee'.

	application := WAAdmin register: self asApplicationAt: 'miem-ee'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.