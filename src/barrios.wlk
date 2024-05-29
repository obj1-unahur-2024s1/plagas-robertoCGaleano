import elementos.*
import plagas.*

class Barrio {
	
	const elementos= []
	
	method agregarElems(listaElem){
		elementos.addAll(listaElem)
	}
	method eliminarElem(unElem){
		elementos.remove(unElem)
	}
	method cantBuenos()=
		elementos.count({e=> e.esBueno()})
	method cantNoBuenos()=
		elementos.count({e=> not e.esBueno()})	
	method esCopado()=
		self.cantBuenos() > self.cantNoBuenos()
}
