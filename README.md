# Actividad integradora 3


## 📌 1. Nombre del Proyecto

PaseoCanino App (flutter_application_3_jdhg)

## 📌 2. Descripción de la Aplicación

Aplicación móvil desarrollada en Flutter diseñada para conectar a dueños de mascotas con paseadores de perros locales. Permite a los usuarios explorar paseadores disponibles, ver sus tarifas, marcar paseadores como favoritos y agendar o cancelar servicios de paseos en tiempo real con actualización automática de la interfaz.

## 📌 3. Objetivo

Facilitar la reserva y gestión de paseos caninos mediante una interfaz moderna, intuitiva y reactiva, aplicando el patrón de diseño Provider para la administración del estado global de la aplicación.

## 📌 4. Funcionalidades Principales

Listado de Paseadores: Catálogo interactivo con tarjetas de detalles, calificaciones y tarifas por hora.

Gestión de Favoritos: Marcado/desmarcado dinámico de paseadores favoritos desde la lista o el detalle.

Reserva de Paseos: Formulario para agendar paseos calculando automáticamente la tarifa total según la duración.

Historial/Lista de Reservas: Vista de paseos programados con opción de cancelación mediante diálogo de confirmación.

Sincronización Reactiva: Actualización instantánea en todas las pantallas al realizar cambios (gracias a Provider).

## 📌 5. Tecnologías y Paquetes Utilizados

Framework: Flutter (Dart)

Gestión de Estado: provider

Estilos y Fuentes: google_fonts

UI & Íconos: flutter/material.dart

## 📌 6. Estructura de Carpetas del Proyecto

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

## 📌 7. Explicación Breve del Provider Implementado

Se implementó la clase PaseosProvider extendiendo de ChangeNotifier. Contiene las listas globales de favoritos y misPaseos. Cuando el usuario realiza una acción (como toggleFavorito, agregarPaseo o cancelarPaseo), el proveedor actualiza el estado interno y llama al método notifyListeners(). Los widgets envolventes Consumer<PaseosProvider> escuchan estos cambios y reconstruyen la UI de manera reactiva e inmediata en cualquier pantalla.

## 📌 8. Descripción de los Widgets Reutilizables Creados

AppLogo: Componente visual con bordes redondeados y gradiente personalizado para mostrar la identidad de la app.

PaseadorCard: Tarjeta para mostrar la vista previa del paseador (foto, calificación, precio) e integrar el botón interactivo de favoritos.

PaseoCard: Tarjeta responsiva que detalla los datos del paseo agendado (mascota, paseador, costo, fecha) y despliega la confirmación para cancelar el servicio.

## 📌 9. Instrucciones Básicas para Ejecutar el Proyecto

- Clonar o descargar el repositorio del proyecto.

- Abrir el proyecto con Visual Studio Code.

- Descargar las dependencias necesarias

- Seleccionar el emulador y ejecutar el programa


## 📌 10. Capturas de las Principales Pantallas

 HomeScreen con lista de paseadores

 ![alt text](menu.png)

DetallePaseadorScreen con el formulario de reserva

![alt text](solic1.png)

FavoritosScreen con la lista filtrada

![alt text](favorito2.png)

Captura: MisPaseosScreen con los paseos agendados

![alt text](paseoshechos.png)

## 📌 11. Captura o Evidencia de la Funcionalidad Administrada mediante Provider


Captura 1: Modificación de estado (Ej: Hacer clic en el corazón de favorito en HomeScreen)

Captura 2: Reflejo automático sin recargar en FavoritosScreen


Captura 3: Diálogo de confirmación al cancelar un paseo en MisPaseosScreen

## 📌 12. Autor

Jorge David Herrera Galán (JDHG)

# Actividad integradora 2

# 🐾 Descripción breve de la aplicación

PaseoCanino es una aplicación móvil desarrollada en Flutter orientada a la gestión y solicitud de servicios de paseo para mascotas. La plataforma conecta a dueños de perros con paseadores verificados, permitiéndoles explorar perfiles, revisar tarifas y calificaciones, filtrar paseadores según sus preferencias, realizar llamadas de contacto directo y programar reservas en tiempo real.

## 📌 Indicar si continuó la aplicación de la Actividad Integradora 1 o desarrolló una nueva.

Para esta entrega se continuó con el desarrollo de la aplicación entregada en la Actividad Integradora 1. Se realizó una reestructuracion de la arquitectura usando un patrón modular y se integro nuevas pantallas, modelos de datos, componentes interactivos y servicios externos.

## ⚡ Descripción de las nuevas funcionalidades implementadas.

* **`Navegación Multipantalla:`** Transición fluida entre cuatro vistas principales del sistema.

* **`Sistema de Filtro por Favoritos::`**  Capacidad de marcar/desmarcar paseadores preferidos y filtrar la lista de paseadores en tiempo real.

* **`Perfil de Paseador Ampliado:`**  Visualización de detalles, biografía, áreas de especialidad y fotografía circular.

* **`Integración de Llamadas Telefónicas:`**  Permitiendo contacto por teléfono desde el dispositivo directamente con el paseador.

* **`Formulario Modal de Reserva:`**  Ventana emergente (ModalBottomSheet) para elegir nombre de la mascota, fecha, hora y duración del servicio.

* **`Cálculo de Tarifas Automático:`**  Cálculo en tiempo real del costo total en función del tiempo de paseo seleccionado.

* **`Historial de Reservas Activas::`**  Registro visual de los paseos agendados con opción de consulta detallada.

## 📌 Listado de las cuatro pantallas desarrolladas y su función

* **`HomeScreen` (`lib/screens/home_screen.dart`):** Dashboard principal con encabezado en gradiente, logotipo, métricas en tiempo real de paseadores/reservas y menú de acceso en cuadrícula.
* **`PaseadoresScreen` (`lib/screens/paseadores_screen.dart`):** Catálogo de paseadores renderizado en `ListView` con fotos circulares, puntuaciones y filtro de favoritos con `setState()`.
* **`DetallePaseadorScreen` (`lib/screens/detalle_paseador_screen.dart`):** Vista de perfil individual con experiencia, especialidades, botón de llamada telefónica y modal flotante para configurar la reserva.
* **`MisPaseosScreen` (`lib/screens/mis_paseos_screen.dart`):** Pantalla de historial que muestra las reservas generadas con su costo total, mascota, fecha y foto del paseador asignado.

## 📌	Widgets nuevos utilizados en el proyecto.

* `ListView.builder:` Renderizado eficiente de listas dinámicas (catálogo de paseadores e historial).

* `GridView.count:` Organización en cuadrícula para las opciones de menú en el Home.

* `ListTile:` Maquetación estándar de filas con avatar, título, subtítulo y elementos finales (trailing).

* `CircleAvatar / ClipRRect:` Modelado circular para las fotos de perfil de los paseadores y el isotipo de la app.

* `Image.network:` Carga de imágenes remotas con control de estado de carga y soporte de error.

* `Divider:` Separadores de línea para organizar secciones visuales.

* `Chip / ChoiceChip:` Etiquetas visuales para mostrar especialidades y botones de selección de horario.

* `OutlinedButton:` Botón con borde para acciones secundarias como llamadas telefónicas.

## 📌   Descripción de las interacciones implementadas.

Navegación entre Pantallas: Uso de Navigator.push y Navigator.pop para desplazarse en la pila de vistas.

Despliegue de Modal Flotante: Uso de showModalBottomSheet para capturar los datos de la reserva sin salir de la pantalla.

Notificaciones Emergentes: Despliegue de SnackBar al guardar un paseo o alternar los filtros visuales.

Selectores Nativos de Fecha y Hora: Apertura de cuadros de diálogo del sistema mediante showDatePicker y showTimePicker.

## 📌   Explicación de la funcionalidad desarrollada mediante setState().

El estado local se utilizó para responder inmediatamente a las acciones del usuario sin reiniciar la vista:

Filtro de Favoritos: En PaseadoresScreen, setState() actualiza la variable booleana mostrarSoloFavoritos, forzando la re-evaluación del arreglo y filtrando la lista en pantalla.

Conmutación de Corazón: Al hacer clic en el botón de favorito de una tarjeta, setState() modifica el valor de paseador.esFavorito para cambiar el icono de gris a rojo.

Cálculo de Reserva: Dentro del modal, setState() recalcula la variable totalPagar cada vez que el usuario presiona los botones + o - para variar la duración en horas.

## 📌   Nombre del paquete externo utilizado y explicación de para qué se utilizó,

Paquete: url_launcher (v6.3.0).

Uso: Se utilizó para comunicar la aplicación de Flutter con el sistema operativo nativo. Al presionar el botón "Llamar al Paseador", la app invoca el esquema tel:+593..., abriendo directamente el marcador telefónico del teléfono móvil con el número precargado.

## 📌   Evidencia de la personalización realizada: nombre, ícono, logotipo y colores.

Nombre de la App: PaseoCanino (configurado en title de MaterialApp y en la barra superior).

Ícono y Logotipo: Representado por un contenedor circular con el ícono Icons.pets_rounded sobre fondo blanco y sombra flotante en el encabezado principal.

Colores Personalizados: Paleta gráfica basada en Colors.deepOrange como tono primario de marca, combinado con Colors.teal para acentos del historial y tonos neutros de fondo (grey.shade50).

## 📌   Capturas de pantalla de las principales pantallas de la aplicación.

MENU PRINCIPAL

![alt text](image-7.png)

BUSCAR PASEADOR

![alt text](image-1.png)

SELECCIONAR PASEADOR

![alt text](image-2.png)

RESERVA PASEADOR

![alt text](image-3.png)

PASEO RESERVADO

![alt text](image-4.png)

LISTAS PASEOS RESERVADOS

![alt text](image-5.png)

CANCELAR RESERVA

![alt text](image-6.png)

LLAMADA AL PASEADOR

![alt text](image-8.png)

AGREGAR FAVORITOS

![alt text](image-9.png)

## 📌   Instrucciones básicas para ejecutar el proyecto.

Para clonar y ejecutar el repositorio https://github.com/joherrera-01/ACT_INT2_JDHG.git en Windows y macOS, debe seguir las siguientes instrucciones para cada sistema operativo.

Prerrequisitos Comunes

 - Tener instalado Git.

 - Tener instalado el SDK de Flutter (versión 3.x o superior) configurado en el PATH del sistema.

 - VS Code o Android Studio instalado con los complementos/plugins de Flutter y Dart.

## 📌   Ejecución en Windows

1. Clonar el Repositorio
Abrir la Terminal de comandos (cmd) o PowerShell y ejecutar:

git clone https://github.com/joherrera-01/ACT_INT2_JDHG.git
cd ACT_INT2_JDHG

2. Descargar Dependencias del Proyecto
Descarga los paquetes necesarios (incluido url_launcher):
flutter pub get

3. Verificar Entornos Disponibles
Verificar que Flutter detecte tus emuladores o navegadores:

flutter doctor

4. Ejecutar la Aplicación

En Navegador Web (Chrome) - Recomendado para evitar problemas CORS:

flutter run -d chrome --web-renderer html

En Emulador de Android:

Abrir Android Studio y ejecutar un emulador desde el AVD Manager.


## 📌   Ejecución en macOS

1. Clonar el Repositorio
Abrir la Terminal de macOS y ejecutar:

git clone https://github.com/joherrera-01/ACT_INT2_JDHG.git
cd ACT_INT2_JDHG

2. Descargar Dependencias del Proyecto

flutter pub get

3. Configurar Permisos para iOS/macOS (Si se usa emulador de iPhone)

Si va a probar el paquete url_launcher para llamadas en un simulador iOS o macOS, asegúrarse de tener Xcode instalado con sus herramientas de línea de comandos.

4. Ejecutar la Aplicación

En Navegador Web (Chrome / Safari):

flutter run -d chrome --web-renderer html

En Simulador de iOS (iPhone):

Abrir el simulador de iOS ejecutar en un emulador


