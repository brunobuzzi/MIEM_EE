other
columnsForItems

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #nombreFuenteEnergia title: 'Fuente de Energía' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a nombreFuenteEnergia <= b nombreFuenteEnergia]; yourself);
			add: ((SewafReportColumn selector: #simboloUnidad title: 'Sim Unidad') beSortable beSearchable; sortBlock: [:a :b | a simboloUnidad <= b simboloUnidad]; yourself);
			add: ((SewafReportColumn selector: #nombreUnidad title: 'Unidad') beSortable beSearchable; sortBlock: [:a :b | a nombreUnidad <= b nombreUnidad]; yourself);
			add: ((SewafReportColumn selector: #factorConversionTEP title: 'Conversión TEP') beSortable beSearchable; sortBlock: [:a :b | a factorConversionTEP <= b factorConversionTEP]; yourself);
			add: ((SewafReportColumn selector: #factorEmisionCO2 title: 'Emisión CO2') beSortable beSearchable; sortBlock: [:a :b | a factorEmisionCO2 <= b factorEmisionCO2]; yourself);
			add: self removeItemButton;
			yourself