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

.data
; �rea de Declaraci�n de Variables

vector dword 10,20,30,40,50

.code

	main200 PROC
	
		;L�gica del Programa

		mov esi,0
		mov eax, vector[esi]
		call writedec
		
		exit	
	
	main200 ENDP
	
	END main200
