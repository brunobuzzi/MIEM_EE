other
newFor: nombreCampo value1: value1 value2: value2

	^super new initialize
			nombreCampo: nombreCampo;
			valorSinMedida: value1;
			valorConMedida: value2;
			calculateDifference;
			yourself