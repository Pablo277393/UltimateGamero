# Documentación Backend

## Stack Tecnológico
- Java + Spring Boot.
- Spring Data JPA + MariaDB.
- Lombok para reducción de boilerplate.
- Spring Web para API REST.

## Ejecución
1. Asegurarse de que MariaDB esté corriendo en Docker (puerto 3309).
2. Ejecutar `./mvnw spring-boot:run` en la carpeta `backend/`.
3. El servidor iniciará en `http://localhost:8099`.

## Estructura de Paquetes
- `com.futmanager.controller`: Endpoints de la API.
- `com.futmanager.service`: Lógica de negocio.
- `com.futmanager.repository`: Interfaces para acceso a datos.
- `com.futmanager.domain`: Entidades anotadas con `@Entity`.
- `com.futmanager.dto`: Objetos de transferencia.
- `com.futmanager.config`: Configuración de CORS y Bean Beans.
- `com.futmanager.exception`: Manejador global de excepciones.
