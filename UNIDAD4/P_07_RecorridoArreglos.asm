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

.data
; Área de Declaración de Variables

contenedor dword 0d
vector_7 dword 10,24,90,12,11,9

.code

	main409 PROC
	
	mov ebx, 0 ; acumulador de la suma

	mov edx,0; limpia el registro

	;mov eax, sizeof vecto
	mov ecx, 4
	div ecx
	mov ecx, eax ; 

	mov esi,0

	ciclo:
	   add ebx, vector_7[esi]
	 	   add esi , 4

	   loop ciclo

	

	
	
	
	
	main409 ENDP
	
	END main409
	