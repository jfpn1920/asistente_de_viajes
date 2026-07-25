Algoritmo asistente_de_viajes
	Definir opcion, totalViajes, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir presupuesto Como Real
	Definir viajero, destino, fechaSalida, fechaRegreso, transporte, alojamiento, estado, observacion Como Cadena
	Dimension id[100]
	Dimension viajero[100]
	Dimension destino[100]
	Dimension fechaSalida[100]
	Dimension fechaRegreso[100]
	Dimension transporte[100]
	Dimension alojamiento[100]
	Dimension presupuesto[100]
	Dimension estado[100]
	Dimension observacion[100]
	totalViajes <- 0
	siguienteID <- 1
	//----------------------------------------//
	//--|menu_principal_asistente_de_viajes|--//
	//----------------------------------------//
	Repetir
		Escribir "menu principal asistente de viajes"
		Escribir "1) registrar viaje"
		Escribir "2) editar viaje"
		Escribir "3) eliminar viaje"
		Escribir "4) buscar viaje"
		Escribir "5) listar viajes"
		Escribir "6) ver detalles del viaje"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_viaje|--//
			//---------------------//
			1:
				Escribir "registrar viaje"
				id[totalViajes + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese el nombre del viajero:"
				Leer viajero[totalViajes + 1]
				Escribir "ingrese el destino:"
				Leer destino[totalViajes + 1]
				Escribir "ingrese la fecha de salida:"
				Leer fechaSalida[totalViajes + 1]
				Escribir "ingrese la fecha de regreso:"
				Leer fechaRegreso[totalViajes + 1]
				Escribir "ingrese el medio de transporte:"
				Leer transporte[totalViajes + 1]
				Escribir "ingrese el alojamiento:"
				Leer alojamiento[totalViajes + 1]
				Escribir "ingrese el presupuesto del viaje:"
				Leer presupuesto[totalViajes + 1]
				Escribir "ingrese el estado (pendiente/planificado/en curso/finalizado/cancelado):"
				Leer estado[totalViajes + 1]
				Escribir "ingrese una observacion:"
				Leer observacion[totalViajes + 1]
				totalViajes <- totalViajes + 1
				Escribir "viaje registrado correctamente."
			//------------------//
			//--|editar_viaje|--//
			//------------------//
			2:
				Escribir "editar viaje"
				Si totalViajes = 0 Entonces
					Escribir "no hay viajes registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalViajes Hacer
						Escribir id[i]," | ",viajero[i]," | ",destino[i]," | ",fechaSalida[i]," | ",fechaRegreso[i]," | ",transporte[i]," | ",alojamiento[i]," | ",presupuesto[i]," | ",estado[i]
					FinPara
					Escribir "ingrese el id del viaje:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalViajes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo viajero:"
							Leer viajero[i]
							Escribir "nuevo destino:"
							Leer destino[i]
							Escribir "nueva fecha de salida:"
							Leer fechaSalida[i]
							Escribir "nueva fecha de regreso:"
							Leer fechaRegreso[i]
							Escribir "nuevo medio de transporte:"
							Leer transporte[i]
							Escribir "nuevo alojamiento:"
							Leer alojamiento[i]
							Escribir "nuevo presupuesto:"
							Leer presupuesto[i]
							Escribir "nuevo estado:"
							Leer estado[i]
							Escribir "nueva observacion:"
							Leer observacion[i]
							Escribir "viaje editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un viaje con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_viaje|--//
			//--------------------//
			3:
				Escribir "eliminar viaje"
				Si totalViajes = 0 Entonces
					Escribir "no hay viajes registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalViajes Hacer
						Escribir id[i]," | ",viajero[i]," | ",destino[i]," | ",fechaSalida[i]," | ",fechaRegreso[i]," | ",transporte[i]," | ",alojamiento[i]," | ",presupuesto[i]," | ",estado[i]
					FinPara
					Escribir "ingrese el id del viaje:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalViajes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalViajes Entonces
								Para j <- i Hasta totalViajes - 1 Hacer
									id[j] <- id[j + 1]
									viajero[j] <- viajero[j + 1]
									destino[j] <- destino[j + 1]
									fechaSalida[j] <- fechaSalida[j + 1]
									fechaRegreso[j] <- fechaRegreso[j + 1]
									transporte[j] <- transporte[j + 1]
									alojamiento[j] <- alojamiento[j + 1]
									presupuesto[j] <- presupuesto[j + 1]
									estado[j] <- estado[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
							FinSi
							totalViajes <- totalViajes - 1
							Escribir "viaje eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un viaje con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_viaje|--//
			//------------------//
			4:
				Escribir "buscar viaje"
				Si totalViajes = 0 Entonces
					Escribir "no hay viajes registrados."
				SiNo
					Escribir "ingrese el id del viaje:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalViajes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i]," | ",viajero[i]," | ",destino[i]," | ",fechaSalida[i]," | ",fechaRegreso[i]," | ",transporte[i]," | ",alojamiento[i]," | ",presupuesto[i]," | ",estado[i]," | ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un viaje con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_viajes|--//
			//-------------------//
			5:
				Escribir "listar viajes"
				Si totalViajes = 0 Entonces
					Escribir "no hay viajes registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalViajes Hacer
						Escribir id[i]," | ",viajero[i]," | ",destino[i]," | ",fechaSalida[i]," | ",fechaRegreso[i]," | ",transporte[i]," | ",alojamiento[i]," | ",presupuesto[i]," | ",estado[i]," | ",observacion[i]
					FinPara
				FinSi
			//------------------------//
			//--|ver_detalles_viaje|--//
			//------------------------//
			6:
				Escribir "ver detalles del viaje"
				Si totalViajes = 0 Entonces
					Escribir "no hay viajes registrados."
				SiNo
					Escribir "ingrese el id del viaje:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalViajes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del viaje"
							Escribir "id: ",id[i]
							Escribir "viajero: ",viajero[i]
							Escribir "destino: ",destino[i]
							Escribir "fecha de salida: ",fechaSalida[i]
							Escribir "fecha de regreso: ",fechaRegreso[i]
							Escribir "transporte: ",transporte[i]
							Escribir "alojamiento: ",alojamiento[i]
							Escribir "presupuesto: ",presupuesto[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un viaje con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalViajes = 0 Entonces
					Escribir "no hay viajes registrados."
				SiNo
					totalPendientes <- 0
					totalPlanificados <- 0
					totalEnCurso <- 0
					totalFinalizados <- 0
					totalCancelados <- 0
					presupuestoTotal <- 0
					mayorPresupuesto <- presupuesto[1]
					menorPresupuesto <- presupuesto[1]
					Para i <- 1 Hasta totalViajes Hacer
						presupuestoTotal <- presupuestoTotal + presupuesto[i]
						Si presupuesto[i] > mayorPresupuesto Entonces
							mayorPresupuesto <- presupuesto[i]
						FinSi
						Si presupuesto[i] < menorPresupuesto Entonces
							menorPresupuesto <- presupuesto[i]
						FinSi
						Si estado[i] = "pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
						Si estado[i] = "planificado" Entonces
							totalPlanificados <- totalPlanificados + 1
						FinSi
						Si estado[i] = "en curso" Entonces
							totalEnCurso <- totalEnCurso + 1
						FinSi
						Si estado[i] = "finalizado" Entonces
							totalFinalizados <- totalFinalizados + 1
						FinSi
						Si estado[i] = "cancelado" Entonces
							totalCancelados <- totalCancelados + 1
						FinSi
					FinPara
					promedioPresupuesto <- presupuestoTotal / totalViajes
					Escribir "estadisticas generales"
					Escribir "total de viajes: ",totalViajes
					Escribir "viajes pendientes: ",totalPendientes
					Escribir "viajes planificados: ",totalPlanificados
					Escribir "viajes en curso: ",totalEnCurso
					Escribir "viajes finalizados: ",totalFinalizados
					Escribir "viajes cancelados: ",totalCancelados
					Escribir "presupuesto total: ",presupuestoTotal
					Escribir "presupuesto promedio: ",promedioPresupuesto
					Escribir "mayor presupuesto: ",mayorPresupuesto
					Escribir "menor presupuesto: ",menorPresupuesto
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistente de viajes."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo