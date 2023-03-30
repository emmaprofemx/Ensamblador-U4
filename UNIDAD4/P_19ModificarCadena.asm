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

vector_19 byte "Maniana pagara 0x refrescos , luis!",0
variable_19 dword 3
.code

	main520 PROC
		;Logica del programa
		
		mov esi , 16 ; indice de la letra x

		call readchar ;readint cantidad de refrescos
		call writechar
		mov vector_19[esi], al

		call crlf

		;ejemplo 1
		;mov eax , 0
		;mov al , vector_19[esi]
		;call writechar

		;ejemplo 2
		mov edx , offset vector_19
		call writestring




		exit
	main520 ENDP
	
	END main520
	