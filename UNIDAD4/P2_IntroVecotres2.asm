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

vector byte 10,20,30,40,50

.code

	main202 PROC
	
		;L�gica del Programa

		mov esi,0
		mov eax,0
		mov al, vector[esi] ; porque si pongo mov eax,0 funciona
		call writedec
		
		exit	
	
	main202 ENDP
	
	END main202
