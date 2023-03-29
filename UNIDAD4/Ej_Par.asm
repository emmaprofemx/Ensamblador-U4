INCLUDE Irvine32.inc  
INCLUDE macros.inc 
.data
; Área de Declaración de Variables


vector_13 dword 10,24,90,12,11,9,14,22
contador dword 0d
.code

main513 PROC
    mov ebx, 0 ; 
    mov edx, 0 ; 

    mov eax, sizeof vector_13
    mov ecx, 4
    div ecx
    mov ecx, eax 
    mov esi, 0

ciclo:
    mov eax, vector_13[esi] ; se almacena el valor del primer elemento del vector
    mov ebx, 2
    div ebx ; 10/2 y el residuo se guarda en edx
    cmp edx, 0 ; 
    je par ; comprueba si es par
    add esi, 4 ; se incrementa para avanzar al siguiente elemento
    loop ciclo
par:
   inc contador ; incrementa el contador
   add esi, 4 ; se incrementa para avanzar al siguiente elemento
    loop ciclo

  println "El numero de pares que hay en el vector son: "
  mov eax,contador
  call writedec; llama a eax con el valor del contador
    exit
main513 ENDP
END main513
