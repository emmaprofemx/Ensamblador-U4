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

vector_18 dword 30 dup(?)
; SE VA A RELLENAR DE 30 VALORES NULOS , OSEA DE 0S
variable_18 dword 3


.code

	main518 PROC
		;Logica del programa
		
		mov ecx , 4

		mov esi , 0

		ciclo: ; valores con letras mayusculas en ascii ... 65 , 66
			call readint
			mov vector_18[esi], al
			inc esi
			loop ciclo

		mov edx , offset vector_18
		call writestring


		exit
	main518 ENDP
	
	END main518
	