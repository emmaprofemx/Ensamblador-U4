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

.data
; Área de Declaración de Variables

vector_9 dword 10,24,90,12,11,9

.code

main507 PROC
   
    mov edx, 0 

    mov eax, sizeof vector_9
    mov ecx, 4
    div ecx
    mov ecx, eax 
    mov esi, 0 ; Primera posicion del vector

ciclo:
   
    mov eax, vector_9[esi] ; se almacena el valor del primer elemento del vector
    mul eax ; se multiplica eax por si mismo
    call writedec ; imprimer el resultado de la multiplicacion
    call crlf
    
    add esi, 4 ; se incrementa para avanzar al siguiente elemento
    loop ciclo

    ; salir del programa
    exit
main507 ENDP
END main507

