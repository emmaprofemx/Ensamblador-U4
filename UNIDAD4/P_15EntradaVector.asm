TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE macros.inc

.data
; �rea de Declaraci�n de Variables

vector_15 dword 20 dup ('A')
;Reserva en memoria que vamos a ocupar para almacenar valores
.code

	main515 PROC
		;Logica del programa
		
		println "Ingrese el valor de la primera posicion"
		call readint ; eax

		mov esi , 0
		mov vector_15[esi], eax

		exit
	main515 ENDP
	
	END main515
	