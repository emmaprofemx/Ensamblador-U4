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
vector_8 dword 10,24,90,12,11,9

.code

	main506 PROC
	
	mov esi, 0 ; indice / posicion que se accedera en el vector
	mov ebx, vector_8[esi] ; suponemos que el primer valor es el mayor de todos

	mov edx,0; limpia el registro para la division
	mov eax, sizeof vector_8
	mov ecx, 4
	div ecx
	mov ecx, eax ; cantidad de elementos en el vector

	 add esi , 4
	 dec ecx

	ciclo:

	   cmp ebx, vector_8[esi]
	   ; SI EBX ES MENOR 

	   jg continuar
	   ; si ebx es menor que el valor del vector
	   mov ebx , vector_8[esi]


	   continuar:
	   add esi , 4
	   loop ciclo

		mov eax , ebx
		println"El mayor es: "	
		call writedec
	
	
	
	
	main506 ENDP
	
	END main506
	
