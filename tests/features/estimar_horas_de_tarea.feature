Feature: estimar horas de tarea
	"""
	Como Empleado, quiero estimar las horas de una tarea, para poder planificar el
	desarrollo del proyecto

	- CA 1: Agregar estimación de horas
	Dado que quiero agregar una estimación de horas a una tarea sin estimación
	Cuando agrego una estimación de horas
	Entonces el sistema deberá agregar la estimación de horas a la tarea

	- CA 2: Fallo al agregar una estimación de horas a una tarea por valor inválido
	Dado que quiero agregar una estimación de horas a una tarea sin estimación
	Cuando las horas trabajadas en la tarea es superior a las horas estimadas
	Entonces el sistema deberá indicar que no fue posible agregar la estimación
	porque las horas trabajadas hasta el momento es superior a la estimación

	- CA 3: Modificar estimación de horas de tarea con estimación
	Dado que quiero modificar la estimación de horas de una tarea que ya tiene
	estimación
	Cuando modifico la estimación de horas
	Entonces el sistema deberá modificar la estimación de horas de la tarea

	- CA 4: Fallo al modificar la estimación de horas de una tarea sin estimación
	Dado que quiero modificar la estimación de horas de una tarea que sin
	estimación
	Cuando intento modificar la estimación de horas
	Entonces el sistema deberá indicar que no es posible modificar la estimación de
	una tarea que no tiene una estimación

	- CA 5: Fallo al modificar la estimación de horas por valor inválido
	Dado que quiero modificar la estimación de horas de una tarea que ya tiene
	estimación
	Cuando las horas trabajadas en la tarea es superior a las horas estimadas
	Entonces el sistema deberá indicar que no es posible modificar la estimación
	porque las horas trabajadas hasta el momento es superior a la estimación

	- CA 6:  Eliminar estimación de horas
	Dado que quiero eliminar la estimación de horas de una tarea que tiene una
	estimación
	Cuando elimino la estimación de horas
	Entonces el sistema deberá eliminar la estimación de horas de la tarea
	"""

	Background:
		Given un proyecto creado

	Scenario: Agregar estimación de horas
		Given una tarea sin estimacion
		When agrego una estimación de 40 horas a la tarea
		Then el sistema deberá agregar la estimación de 40 horas a la tarea

	Scenario: Eliminar estimación de horas
		Given una tarea con estimacion de 40 horas
		When elimino la estimación de horas de la tarea
		Then el sistema deberá eliminar la estimación de horas de la tarea

	Scenario: Modificar estimación de horas de tarea con estimación
		Given una tarea con estimacion de 20 horas
		When modifico una estimación de 40 horas a la tarea
		Then el sistema deberá modificar la estimación de 40 horas a la tarea

