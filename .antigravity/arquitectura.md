# Arquitectura de Sistema

FutManager sigue una arquitectura moderna desacoplada.

## Frontend (React)
- **Framework**: Vite + React.
- **Styling**: TailwindCSS para un diseño premium y responsive.
- **Componentes**: Estructura atómica para alta reutilización.
- **Estado**: Uso de Context API o Hooks personalizados para la gestión de la colección y el equipo.

## Backend (Spring Boot)
- **Arquitectura**: Arquitectura por capas (N-Tier).
- **Controller**: Puntos de entrada REST.
- **Service**: Lógica de negocio (ej. validación del límite de sobres).
- **Repository**: Capa de persistencia usando Spring Data JPA.
- **Domain**: Entidades del modelo de negocio.
- **DTO**: Objetos de transferencia de datos para evitar fugas del modelo interno.

## Comunicación
- **REST API**: JSON sobre HTTP.
- **Puerto 8099**: Puerto estricto para el backend.
- **CORS**: Configurado para permitir peticiones desde el frontend de desarrollo.

## Base de Datos
- **MariaDB**: Corriendo en Docker (puerto 3309).
- **Persistencia**: Hibernate para mapeo O/R.
