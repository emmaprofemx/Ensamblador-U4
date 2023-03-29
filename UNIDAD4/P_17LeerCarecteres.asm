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

vector_17 dword 30 dup(?)
; SE VA A RELLENAR DE 30 VALORES NULOS , OSEA DE 0S
variable_17 dword 3


.code

	main517 PROC
		;Logica del programa
		
		mov ecx , 4

		mov esi , 0

		ciclo: ; valores con letras mayusculas en ascii ... 65 , 66
			call readint
			mov vector_17[esi], eax
			add esi , 4
			loop ciclo

		mov edx , offset vector_17
		call writestring


		exit
	main517 ENDP
	
	END main517
	