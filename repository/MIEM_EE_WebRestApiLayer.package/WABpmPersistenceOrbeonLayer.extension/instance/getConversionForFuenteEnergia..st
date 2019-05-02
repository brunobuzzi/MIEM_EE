*MIEM_EE_WebRestApiLayer
getConversionForFuenteEnergia: codigoFuenteEnergia
	""
	<get>
    <path: '/conversionfuenteenergia?fuente={1}'> 
	<produces: 'text/xml'>
	| fuente conversion |

	fuente := FuenteEnergia getFuenteEnergiaWithCode: codigoFuenteEnergia ifAbsent: [^'<error>Fuente de energia no existe</error>'].

	conversion  := fuente getConversionFor: Date today.

	^'<conversion>
		<fuente>',conversion nombreFuenteEnergia,'</fuente>
		<unidad>',conversion nombreUnidad,'</unidad>
		<conversionTEP>',conversion factorConversionTEP printString,'</conversionTEP>
		<emisionCO2>',conversion factorEmisionCO2 printString,'</emisionCO2>
	</conversion>'