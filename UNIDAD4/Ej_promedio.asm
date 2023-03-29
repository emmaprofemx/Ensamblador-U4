;DESCRIPCIÓN
;Objetivo: Archivo de Ejemplo
;
;Autor(es):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.
;
;Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc 
.data
; Área de Declaración de Variables


vector_10 dword 10,24,90,12,11,9,12

.code

main512 PROC
    mov ebx, 0 ; inicializa el acumulador en cero
    mov edx, 0 ; limpia el registro

    mov eax, sizeof vector_10
    mov ecx, 4
    div ecx
    mov ecx, eax 
    mov esi, 0 ; TOMA EL PRIMER VALOR DEL VECTOR

ciclo:
    add ebx, vector_10[esi] ;
    add esi, 4 ; 
    loop ciclo
    mov eax, ebx
    println "La suma de todos los elementos del vector es: "
     call writedec
     call crlf

    mov ecx,7
    div ecx
    println "El promedio de todos los elementos es: "
    call writedec ;
    call crlf
    
    
   

    ; salir del programa
    exit
main512 ENDP
END main512

