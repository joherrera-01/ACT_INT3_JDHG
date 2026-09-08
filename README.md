# Actividad integradora 3


Nombre del Proyecto

PaseoCanino App (flutter_application_3_jdhg)

Descripción de la Aplicación

Aplicación móvil desarrollada en Flutter diseñada para conectar a dueños de mascotas con paseadores de perros locales. Permite a los usuarios explorar paseadores disponibles, ver sus tarifas, marcar paseadores como favoritos y agendar o cancelar servicios de paseos en tiempo real con actualización automática de la interfaz.

Objetivo

Facilitar la reserva y gestión de paseos caninos mediante una interfaz moderna, intuitiva y reactiva, aplicando el patrón de diseño Provider para la administración del estado global de la aplicación.

Funcionalidades Principales

Listado de Paseadores: Catálogo interactivo con tarjetas de detalles, calificaciones y tarifas por hora.

Gestión de Favoritos: Marcado/desmarcado dinámico de paseadores favoritos desde la lista o el detalle.

Reserva de Paseos: Formulario para agendar paseos calculando automáticamente la tarifa total según la duración.

Historial/Lista de Reservas: Vista de paseos programados con opción de cancelación mediante diálogo de confirmación.

Sincronización Reactiva: Actualización instantánea en todas las pantallas al realizar cambios (gracias a Provider).

Tecnologías y Paquetes Utilizados

Framework: Flutter (Dart)

Gestión de Estado: provider

Estilos y Fuentes: google_fonts

UI & Íconos: flutter/material.dart

Estructura de Carpetas del Proyecto

lib/
├── data/
│   └── paseadores_data.dart
├── models/
│   ├── paseador_model.dart
│   └── paseo_model.dart
├── providers/
│   └── paseos_provider.dart
├── screens/
│   ├── detalle_paseador_screen.dart
│   ├── favoritos_screen.dart
│   ├── home_screen.dart
│   └── mis_paseos_screen.dart
├── widgets/
│   ├── app_logo.dart
│   ├── paseador_card.dart
│   └── paseo_card.dart
└── main.dart

Explicación Breve del Provider Implementado

Se implementó la clase PaseosProvider extendiendo de ChangeNotifier. Contiene las listas globales de favoritos y misPaseos. Cuando el usuario realiza una acción (como toggleFavorito, agregarPaseo o cancelarPaseo), el proveedor actualiza el estado interno y llama al método notifyListeners(). Los widgets envolventes Consumer<PaseosProvider> escuchan estos cambios y reconstruyen la UI de manera reactiva e inmediata en cualquier pantalla.

Descripción de los Widgets Reutilizables Creados

AppLogo: Componente visual con bordes redondeados y gradiente personalizado para mostrar la identidad de la app.

PaseadorCard: Tarjeta para mostrar la vista previa del paseador (foto, calificación, precio) e integrar el botón interactivo de favoritos.

PaseoCard: Tarjeta responsiva que detalla los datos del paseo agendado (mascota, paseador, costo, fecha) y despliega la confirmación para cancelar el servicio.

Instrucciones Básicas para Ejecutar el Proyecto

Clonar o descargar el repositorio del proyecto.

Abrir una terminal en la raíz del proyecto.

Descargar las dependencias necesarias:

Capturas de las Principales Pantallas
(Adjunta aquí las capturas de pantalla tomadas de tu emulador o dispositivo real)

[Insertar Captura: HomeScreen con lista de paseadores]

[Insertar Captura: DetallePaseadorScreen con el formulario de reserva]

[Insertar Captura: FavoritosScreen con la lista filtrada]

[Insertar Captura: MisPaseosScreen con los paseos agendados]

Captura o Evidencia de la Funcionalidad Administrada mediante Provider
(Adjunta aquí las capturas que comprueben la reactividad)

[Insertar Captura 1: Modificación de estado (Ej: Hacer clic en el corazón de favorito en HomeScreen)]

[Insertar Captura 2: Reflejo automático sin recargar en FavoritosScreen]

[Insertar Captura 3: Diálogo de confirmación al cancelar un paseo en MisPaseosScreen]

Autor

Jorge David Herrera Galán (JDHG)