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

vector_10 dword 10,4,19,1,3,14
valorX dword 0
contadoe dword 0
.code

	main511 PROC
		;Logica del programa
		;	11
		;   1 , 3 , 4 = 3
		

		println"Ingrese el valor de X: "	
		call readint ; LEEMOS EAX
		
		mov ebx , eax


		mov ebx, sizeof vector_10 ; obtener el valor de x , estoy se ocupa (1)
		mov ecx, 4 ; esto tambien lo debeemos de ocupar (2)
		mov edx , 0
		div ecx ; (3)
		mov ecx , eax

		mov eax , 0 ; contador
		mov esi , 0; indice

		
		 ciclo:

				cmp ebx , vector_10[esi]
				jg continuar

						inc eax

				continuar:

				add esi , 4

				;call writedec

		 loop ciclo
			call writedec
	main511 ENDP
	
	END main511
	
	;1-CALCULAR EL VECTOR QUE SE GENERA DEL CUADRADO(POTENCIA) DE TODOS LOS ELEMENTOS DE UN VECTOR
	;2-CALCULAR EL PROMEDIO DE LOS ELEMENTOS DE UN VECTOR
	;3-CONTAR CUANTOS ELEMENTOS SON PARES EN UN VECTOR
	;4-INVERTIR LOS ELEMENTOS DE UN VECTOR