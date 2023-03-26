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

contenedor dword 0d
vector_9 dword 10,24,90,12,11,9

.code

	main510 PROC
	
	mov esi, 0 ; indice / posicion que se accedera en el vector
	mov ebx, vector_9[esi] ; suponemos que el primer valor es el mayor de todos

	mov edx,0; limpia el registro para la division
	mov eax, sizeof vector_9 ; obtener el valor de x , estoy se ocupa (1)
	mov ecx, 4 ; esto tambien lo debeemos de ocupar (2)
	div ecx ; (3)
	mov ecx, eax ; cantidad de elementos en el vector (4)

	 add esi , 4
	 dec ecx

	ciclo:

	   cmp ebx, vector_9[esi]
	   ; SI EBX ES MENOR 

	   jl continuar
	   ; si ebx es menor que el valor del vector
	   mov ebx , vector_9[esi]


	   continuar:
	   add esi , 4
	   loop ciclo

		mov eax , ebx
		println"El menor es: "	
		call writedec
	
	main510 ENDP
	
	END main510
	
