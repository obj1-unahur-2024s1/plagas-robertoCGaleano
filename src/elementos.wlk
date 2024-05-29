import plagas.*

object nivelDeProduccion{
	var property nivelDeProduccion= 1000
}

class Hogar{
	
	var nivelMugre
	const confort
	method nivelMugre()= nivelMugre
	method esBueno()= confort*0.5 >= nivelMugre
	method esAtacadoPor(unaPlaga){
		nivelMugre = nivelMugre + unaPlaga.nivelDanio()
	}
}

class Huerta{
	
	var produccion
	method produccion()= produccion
	method esBueno()= produccion > nivelDeProduccion.nivelDeProduccion()
	method esAtacadoPor(unaPlaga){
		produccion = 0.max(produccion - (unaPlaga.nivelDanio()*0.10) - if (unaPlaga.transmiteEnfermedades())10 else 0)
	}
}

class Mascota{
	
	var nivelDeSalud
	method nivelDeSalud()= nivelDeSalud 
	method esBueno()= nivelDeSalud > 250
	method esAtacadoPor(unaPlaga){
		nivelDeSalud= 0.max(nivelDeSalud - if (unaPlaga.transmiteEnfermedades()) unaPlaga.nivelDanio() else 0)
	}
}