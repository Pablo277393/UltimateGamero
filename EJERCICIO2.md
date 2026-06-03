# EJERCICIO 2: Análisis de Mala Práctica en el Backend

## Título del ejercicio
Análisis de Mala Práctica: Eficiencia en la Selección Aleatoria de Jugadores en el Sistema de Sobres.

## Descripción de la funcionalidad analizada
La funcionalidad analizada es la **apertura de sobres (Pack Opening)**. Este proceso permite a un usuario obtener un jugador aleatorio de la base de datos y añadirlo a su colección, siempre que no haya superado el límite diario de 10 sobres.

## Archivo(s) implicados
* `backend/src/main/java/com/futmanager/service/PackService.java`

## Explicación detallada del problema encontrado
Dentro del método `openPack(Long userId)`, específicamente en la línea 46, se utiliza la siguiente instrucción para obtener a los candidatos del sobre:

```java
List<Player> allPlayers = playerRepository.findAll();
```

Posteriormente, el código selecciona un jugador al azar de esa lista completa:

```java
Player player = allPlayers.get(random.nextInt(allPlayers.size()));
```

## Motivo por el que se considera una mala práctica
Se considera una mala práctica de **eficiencia y gestión de recursos** por las siguientes razones:

1. **Uso excesivo de memoria (RAM)**: Al ejecutar `findAll()`, Spring Data JPA recupera **todos** los registros de la tabla `players` y los convierte en objetos Java en memoria. Si la base de datos tiene miles o millones de jugadores, esto puede agotar la memoria del servidor.
2. **Latencia de red y DB**: Transferir toda la tabla desde la base de datos al backend es un proceso lento que consume ancho de banda innecesario cuando solo se requiere un único registro.
3. **Escalabilidad**: El rendimiento del sistema se degradará linealmente conforme crezca el número de jugadores en la base de datos, convirtiéndose en un cuello de botella crítico.

## Posibles consecuencias
* **Crasheos del servidor**: Errores del tipo `OutOfMemoryError` si la base de datos crece considerablemente.
* **Tiempos de respuesta lentos**: El usuario percibirá una demora significativa al abrir un sobre debido al tiempo de carga de la lista completa.
* **Costes operativos**: Mayor consumo de CPU y memoria en la infraestructura de hosting.

## Propuesta de mejora teórica
La lógica de selección aleatoria debe delegarse a la base de datos o realizarse de forma que se minimice la transferencia de datos. 

**Soluciones recomendadas:**

1. **Consulta Nativa con ORDER BY RAND()**:
   Modificar el repositorio para usar una consulta que devuelva un solo registro aleatorio:
   ```sql
   SELECT * FROM players ORDER BY RAND() LIMIT 1;
   ```
   *Pros: Muy simple de implementar y eficiente para tablas de tamaño moderado.*

2. **Selección por Índice Aleatorio (Contar y Paginar)**:
   - Realizar una consulta de conteo (`SELECT COUNT(*) FROM players`).
   - Generar un número aleatorio `N` entre 0 y el conteo.
   - Recuperar el jugador usando paginación: `playerRepository.findAll(PageRequest.of(N, 1))`.
   *Pros: Más eficiente para bases de datos muy grandes que el ORDER BY RAND().*
