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

	main403 PROC
	
		;L�gica del Programa

		;MUESTRA TODOS LOS DATOS DEL VECTOR
		mov ecx, sizeof vector
		mov esi,0 ; bytes valores pequenos y dword para guardar valores grandes

	ciclo:
	     mov eax, 0
		 mov al, vector[esi]
		call writeDec
		call crlf 
		inc esi
		loop ciclo
		exit	
	
	main403 ENDP
	
	END main403
