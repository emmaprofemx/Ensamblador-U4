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

vector_14 dword 10,24,90,12,11,9,14,22

.code
main580 PROC
   mov ebx, 0     ; inicializa el acumulador en cero
   mov edx, 0     ; limpia el registro

  mov esi, sizeof vector_14
  mov ecx, 4
  div ecx
  mov ecx, eax 
  sub esi, 4

ciclo:
   mov eax, vector_14[esi] ; se almacena el valor del elemento actual del vector
   call writedec 
   call crlf
   sub esi, 4 ; se disminuye el índice para apuntar al siguiente elemento
   cmp esi,0
   jl salir;
   loop ciclo  
  
       

   salir:
   ; salir del programa
   exit    
main580 ENDP

END main580
