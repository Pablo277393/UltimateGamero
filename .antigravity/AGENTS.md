# Normas de Desarrollo FutManager

Este proyecto sigue una separación estricta entre Frontend y Backend.

## Reglas de Desarrollo
- **Backend First**: La API debe estar definida antes de su implementación en el Frontend.
- **Clean Code**: Nombres de variables descriptivos, funciones pequeñas y responsabilidad única.
- **Arquitectura por Capas**: El backend sigue el patrón Controller -> Service -> Repository -> Domain.
- **Frontend Modular**: Componentes reutilizables, gestión de estado limpia con Hooks.
- **Documentación**: Cada cambio significativo debe reflejarse en esta carpeta `.antigravity/`.

## Convenciones de Nombres
- **Java**: camelCase para variables/métodos, PascalCase para clases.
- **JavaScript/React**: camelCase para funciones/variables, PascalCase para Componentes.
- **CSS (Tailwind)**: Seguir el orden de utilidades de Tailwind.

## Comunicación
- La comunicación entre Frontend y Backend se realiza mediante JSON a través de una API REST.
- El puerto del backend es el 8099.
