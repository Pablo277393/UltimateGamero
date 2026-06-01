# Estrategia de Testing

## Backend
- **Unit Tests**: Pruebas de lógica de negocio en los servicios (ej. validar que no se abran más de 10 sobres).
- **Integration Tests**: Pruebas de repositorios con H2 o base de datos de test.
- **Controller Tests**: MockMvc para verificar los endpoints REST.

## Frontend
- **Component Tests**: Vitest + React Testing Library para componentes UI.
- **E2E Tests**: (Opcional) Playwright para flujos críticos (apertura de sobre -> guardado en colección).

## Casos de Uso Críticos
1. Un usuario intenta abrir el sobre número 11 en el mismo día (debe fallar).
2. Un jugador se añade correctamente al equipo si está en la colección.
3. El responsive funciona correctamente en móviles.
