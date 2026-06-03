# EJERCICIO 3: Documentación de Funcionalidad Completa

## Título del ejercicio
Documentación del Flujo: Proceso de Apertura de Sobres y Persistencia en Colección.

## Descripción de la funcionalidad elegida
La funcionalidad permite al usuario interactuar con la "Tienda" (Store) para abrir un **Sobre de Oro**. Al hacerlo, el sistema verifica las restricciones del usuario, genera un jugador aleatorio de forma persistente y lo muestra en una animación en el navegador.

## Componentes o páginas del Frontend implicadas
* **`Store.jsx`**: Página principal que gestiona el estado de apertura y muestra los resultados.
* **`Button.jsx`**: Componente de interfaz para disparar la acción.
* **`PlayerCard.jsx`**: Componente encargado de renderizar visualmente el jugador obtenido.
* **`api.js`**: Servicio centralizado que define la llamada Axios al backend.

## Flujo de interacción del usuario
1. El usuario navega a la sección **Store**.
2. El sistema muestra cuántos sobres ha abierto hoy (ej. 3/10).
3. El usuario hace clic en el botón **"OPEN PACK"** o en el visual del sobre.
4. El botón pasa a estado `disabled` y muestra un mensaje de "OPENING PACK...".
5. Tras completarse el proceso, la UI se actualiza para mostrar el **"PACK RESULT"** con la carta del jugador.

## Peticiones HTTP realizadas
* **Método**: `POST`
* **URL**: `http://localhost:8099/api/packs/open/1` (donde `1` es el ID del usuario).
* **Cuerpo (Request Body)**: Vacío (la lógica se basa en el ID de la URL).

## Endpoint(s) utilizados
* `@PostMapping("/open/{userId}")` en la ruta base `/api/packs`.

## Controlador(es), servicio(s) o capa(s) de negocio involucradas
1. **`PackController`**: Recibe la petición REST y extrae el `userId`.
2. **`PackService`**:
   - Valida la existencia del usuario via `UserRepository`.
   - Verifica la fecha y el contador `packsOpenedToday`.
   - Lanza una excepción `PackLimitExceededException` si el límite es alcanzado.
   - Selecciona un `Player` aleatorio via `PlayerRepository`.
   - Añade el jugador a la colección (`user.getCollection().add(player)`).
   - Incrementa el contador y guarda el estado.
3. **`PlayerRepository` / `UserRepository`**: Capas de persistencia que interactúan con MariaDB.

## Flujo de datos desde la acción hasta la respuesta
1. **Frontend**: `handleOpenPack` llama a `futApi.openPack(1)`.
2. **Backend**: El controlador delega al servicio bajo una transacción (`@Transactional`).
3. **Backend**: El servicio consulta la base de datos, modifica el estado del usuario y recupera el objeto `Player`.
4. **Backend**: Se devuelve el objeto `Player` serializado en formato JSON.
5. **Frontend**: La respuesta llega a `Store.jsx`, se guarda en el estado `openedPlayers` y se renderiza el componente `PlayerCard`.

## Respuesta devuelta por el backend
Objeto JSON con los datos del jugador (Ejemplo simplificado):
```json
{
  "id": 14,
  "name": "Kylian Mbappe",
  "position": "DEL",
  "rating": 94,
  "pace": 104,
  "shooting": 104,
  "passing": 89,
  "dribbling": 104,
  "defending": 54,
  "physical": 89,
  "rarity": "Especial",
  "imageUrl": "https://..."
}
```

## Conclusión final
El sistema implementa un flujo síncrono robusto donde la lógica de negocio (restricciones de seguridad y azar) reside exclusivamente en el backend. El frontend actúa como una capa de presentación reactiva que maneja estados de carga y errores de forma elegante, garantizando que el usuario tenga una experiencia visualmente "premium" mientras se asegura la integridad de los datos en MariaDB.
