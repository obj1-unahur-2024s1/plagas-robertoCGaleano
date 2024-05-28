class Plaga {
	var poblacion
	
	method transmiteEnfermedades()=
		poblacion >= 10
	
}

class Cucarachas inherits Plaga{
	var pesoPromedioBicho
	
	method nivelDanio()= poblacion * 0.5 
	override method transmiteEnfermedades()= super() and pesoPromedioBicho >= 10
}
	

class Pulgas inherits Plaga{
	
	method nivelDanio()= poblacion *2
	
}

class Garrapatas inherits Pulgas{
	
	
}

class Mosquitos inherits Plaga{
	
	method nivelDanio()= poblacion
	override method transmiteEnfermedades()= super() and poblacion % 3 == 0
}

