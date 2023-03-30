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

vector_20 byte "El resultado es: XX.!",0

.code

	main521 PROC
		;Logica del programa
		
		mov esi , 17 ; indice de la letra x


		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov eax , 12 ; XY
		;UNA DE LAS MANERAS DE SEPARAR ES LA SIGUIENTE
		mov ebx , 10
		mov edx , 0
		div ebx ; eax = 1 edx = 2

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		add eax , 48 ; 48 =0 CODIGO ASCII
		mov vector_20[esi] , al
		inc esi

		mov eax , edx ; PASA EL 2 A EAX
		add eax , 48 ; 48 =0 CODIGO ASCII
		mov vector_20[esi] , al
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;PARA IMPRIMIR
		call crlf
		mov edx , offset vector_20
		call writestring

		;SI EAX ES MAYOR A 10 HACER EL PROCEDIMINETO
		; SI ES MENOR APLICAR EL MENOR , SUMAR 48 Y MANDAS A DESPLEGAR
		exit
	main521 ENDP
	
	END main521
	