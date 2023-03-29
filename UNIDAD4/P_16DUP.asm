TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc

.data
; Área de Declaración de Variables

vector_16 dword ?
;? = ES NULO 0
variable_17 dword 3

;ES OBLIGATORIO RESERVAR MEMORIA



.code

	main516 PROC
		;Logica del programa
		
		println "Ingrese el valor de la primera posicion"
		call readint ; eax

		mov esi , 0
		mov vector_16[esi], eax

		add esi , 4
		println "Ingrese el segundo valor del vector:"
		call readint ; eax
		mov vector_16[esi],eax


		exit
	main516 ENDP
	
	END main516
	