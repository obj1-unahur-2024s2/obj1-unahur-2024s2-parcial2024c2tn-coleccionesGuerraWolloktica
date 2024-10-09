# Guerra Wollóctica

Una fuerza armada, llamada La Alianza, está formando su ejército para restaurar la República en la guerra civil Wollóctica.

La Alianza recluta guerreros que serán parte de su ejército. Para que un guerrero pueda ser reclutado, debe tener una salud mayor a 50 y un poder de al menos 25 unidades. La Alianza puede entrenar a sus guerreros de forma individual para mejorar sus habilidades o entrenar a todo el ejército en conjunto.

La Alianza conoce el número de guerreros en su ejército, y el poder total del ejército se calcula sumando el poder de cada uno, más 25 unidades adicionales por guerrero. Se considera invencible si tiene un ejército poderoso, es decir, si todos sus guerreros tienen un poder superior a 50 unidades o si cuenta con al menos un guerrero campeón. La condición de ser campeón varía según cada guerrero.

Además, La Alianza tiene la capacidad de emitir dos informes parametrizados:
- Guerreros débiles: aquellos guerreros cuya energía es igual o inferior al valor informado por parámetro.
- Ganar batalla: si el poder total del ejército supera el valor informado por parámetro.

Por último, también puede generar estos otros dos informes:
- Poca salud y mucho poder: determina si el guerrero con menor salud tiene más poder que el guerrero con mayor cantidad de salud.
- Lista de nombres: muestra solo los nombres de los guerreros de La Alianza que son campeones.

## Guerreros

Algunos de los guerreros que puede reclutar La Alianza son Luck, Yoda, Arturito, y C3P0.

### Luke

Luke Skywalker, también conocido como Luke, tiene dos sables de luz: un Sable Verde y un Sable Azul. Inicialmente, su poder es de 5 y su salud es de 75. Cuando Luke entrena, su salud aumenta 25 puntos, y su poder se incrementa según el sable de luz que esté usando en ese momento. El Sable Azul le otorga 25 puntos de poder, mientras que el Sable Verde le otorga 15 puntos. Luke comienza usando el Sable Verde.

Luke puede cambiar entre sus dos sables en cualquier momento, y el sable que elija determinará cuánto aumenta su poder cuando entrena. Solo es campeón si su poder es de al menos 30 unidades.

- #### Casos de Prueba Luke

- Luke entrena sin cambiar de sable, la Alianza intenta reclutar a Luke pero no puede debido a su bajo poder y Luke aún no es un campeón.
- Luke cambia el sabe al Azul y entrena. La Alianza ahora sí puede reclutarlo y luke pasa a ser campeón.

### Yoda
Din Grogu, o Yoda para los amigos, tiene una salud de 30, un poder de 50, y un estado usando la fuerza (inicialmente desactivado), que puede alternar, es decir, solo puede cambiar de desactivado a activado y viceversa. Cuando entrena, si no está usando la fuerza, su salud aumenta en 25; pero si la está usando, su poder se duplica. Yoda siempre es un campeón.

- #### Casos de Prueba Yoda

- Yoda alterna para usar la fuerza y entrenar. Su poder aumenta a 100. Pero aún no puede ser reclutado porque su energia esta en 30 unidades aunque es un campeón. 
- Yoda entrena sin usar la fuerza. Ahora puede ser reclutado por la alianza porque su poder se mantiene en 50 pero su energía aumento a 55 unidades.

### Arturito 

R2-D2 más conocido como Arturito, tiene una salud inicial de 50, y un poder estático de 80 menos la cantidad de sus reparaciones * 2. Y cuando entrena su salud aumenta en 10, y la cantidad de reparaciones en 1. Arturito es campeón cuando sus reparaciones es un número par.

- #### Casos de Prueba Arturito

- Arturito no puede ser reclutado por La Alianza.
- Al entrenar la salud de Arturito cambia a 60 y su poder se reduce a 78. Ahora sí puede ser reclutado aunque en no es campeón.

### C3P0

Por último, tenemos a C-3PO, el robot ingeniero, que cuenta con una salud de 80, un poder de 30 y una capacidad de reparación inicial de 3. Cuando entrena, su capacidad de reparación aumenta en 1. Es considerado campeón solo cuando la cantidad de reparaciones es mayor al 10 % de su poder.

C-3PO puede reparar el Halcón Milenario (la nave en la que viaja el ejército de La Alianza). Al hacerlo, si aún no es campeón, la nave mejora su blindaje y velocidad en 200 unidades. En cambio, ya es campeón, el blindaje y la velocidad mejoran en 100 * su capacidad de reparación.

El Halcón Milenario posee inicialmente una velocidad de 500 y un blindaje de 1000.

#### Casos de Prueba C3P0
- C-3PO siempre puede ser reclutado por La Alianza, porque su poder de 30 y su salud de 80 unidades no varían.
- C-3PO repara el Halcón Milenario, y su blindaje y velocidad mejoran a 700 y 1200, respectivamente, porque aún no es campeón.
- C-3PO entrena y repara la nave; su blindaje y velocidad deberían ser 900 y 1400, pero ya es campeón.

## Probamos a la Alizana

### Preparación para ejecutar los test de la alianzar
Realizar la siguiente preparación antes de correr el test de la alianza.
- Que la alianza entrene en forma individual a Luke, Yoda, Arturito y C3PO.
- Que la alianza intente reclutar a Luke, Yoda, Arturito y C3PO.

### Test sobre la alianza
- El tamaño del ejército es de solo 3 guerreros.
- Los miembros del ejército son Yoda, Arturito y C-3PO.
- El poder total del ejército es 233 = 50 + 25 + 78 + 25 + 30 + 25.
- No es un ejército poderoso.
- Es invencible porque, aunque no es poderoso, tiene un campeón.
- Los guerreros débiles con un parámetro de 59 son únicamente Yoda.
- No ganaría una batalla si el parámetro fuera de 250.
- Poca salud y mucho poder es verdadero.
- La lista de nombres de los guerreros campeones es "Din Grogu" y "C-3PO."

