kern0-boot
----------

> ¿Emite algún aviso el proceso de compilado o enlazado? Si lo hubo, indicar cómo usar la opción --entry de `ld(1)` para subsanarlo.

...

> ¿Cuánta CPU consume el proceso `qemu-system-i386` mientras ejecuta este _kernel_? ¿Qué está haciendo?

...


kern0-quit
----------

> Ejecutar el comando `info registers` en el monitor de _QEMU_, e incluir el resultado en la entrega. (El mismo comando, `info reg`, existe también en GDB).

...

kern0-hlt
---------

> Una vez invocado `hlt` ¿cuándo se reanuda la ejecución?

...

> Usar el comando `powertop` para comprobar el consumo de recursos de ambas versiones del kernel. En particular, para cada versión, anotar:

> * columna Usage: fragmento de tiempo usado por QEMU en cada segundo.
> * columna Events/s: número de veces por segundo que QEMU reclama la atención de la CPU.

...

kern0-gdb
---------

> Mostrar una sesión de GDB en la que se realicen los siguientes pasos:
> * poner un breakpoint en la función comienzo (p.ej. b comienzo)

...

> * continuar la ejecución hasta ese punto (c)

...

> * mostrar el valor del stack pointer en ese momento (p $esp), así como del registro %eax en formato hexadecimal (p/x $eax). Responder:
> 	* ¿Por qué hace falta el modificador /x al imprimir %eax, y no así %esp?
> 	* ¿Qué significado tiene el valor que contiene %eax, y cómo llegó hasta ahí? (Revisar la documentación de Multiboot, en particular la sección Machine state.)

...

> * el estándar Multiboot proporciona cierta informacion (Multiboot Information) que se puede consultar desde la función principal vía el registro %ebx. Desde el breakpoint en comienzo imprimir, con el comando x/4xw, los cuatro primeros valores enteros de dicha información, y explicar qué significan. A continuación, usar y mostrar las distintas invocaciones de x/... $ebx + ... necesarias para imprimir:
> 	* el campo flags en formato binario

...

> 	* la cantidad de memoria "baja" en formato decimal (en KiB)

...

> 	* la línea de comandos o "cadena de arranque" recibida por el kernel (al igual que en C, las expresiones de GDB permiten dereferenciar con el operador *)

...

> 	* si está presente (indicar cómo saberlo), el nombre del gestor de arranque.

...

kern0-vga
---------

> Explicar el código que se muestra en el enunciado, en particular:
> * qué se imprime por pantalla al arrancar.

...

> * qué representan cada uno de los valores enteros (incluyendo 0xb8000).

...

> * por qué se usa el modificador volatile para el puntero al buffer.

...
