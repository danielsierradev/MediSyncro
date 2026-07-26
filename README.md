# MediSyncro 🏥

> Sistema de historial médico offline-first para brigadas de salud en zonas rurales con nula o poca conectividad.

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=flat&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=flat&logo=dart)
![SQLite](https://img.shields.io/badge/SQLite-local-003B57?style=flat&logo=sqlite)
![Supabase](https://img.shields.io/badge/Supabase-backend-3ECF8E?style=flat&logo=supabase)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat)
![Version](https://img.shields.io/badge/Version-v0.1.0--design-185FA5?style=flat)

---

## 📋 Descripción

**MediSyncro** es una aplicación móvil multiplataforma desarrollada en Flutter y Dart, diseñada para el registro, gestión y seguimiento de historiales clínicos en zonas rurales con baja o nula conectividad a internet.

El proyecto surge ante la problemática del registro manual en papel que generan pérdida de información y falta de trazabilidad en brigadas de salud rurales de Colombia, afectando la continuidad de la atención médica.

La solución implementa una arquitectura **offline-first**, donde los datos se almacenan localmente en SQLite y se sincronizan automáticamente con Supabase cuando se detecta conexión a internet.

---

## 🎯 Problema que resuelve

Según el DANE (2023), el **34% de la población rural en Colombia** no tiene acceso a internet. El Ministerio de Salud (2022) reporta que el **70% de los puestos de salud rurales** aún utilizan registros en papel, generando:

- ❌ Pérdida de información clínica
- ❌ Duplicidad de datos
- ❌ Dificultad en el seguimiento de pacientes
- ❌ Decisiones clínicas sin trazabilidad

---

## ✅ Solución

MediSyncro permite al personal de brigadas médicas:

- 📱 Registrar pacientes con foto e historial clínico **sin internet**
- 💉 Gestionar esquemas de vacunación con alertas
- 💊 Controlar medicamentos formulados
- ☁️ Sincronizar datos automáticamente al detectar conexión
- 📄 Exportar reportes clínicos en PDF
- 🖥️ Visualizar historiales desde un panel web para el médico

---

## 🛠️ Tecnologías

| Categoría | Tecnología | Propósito |
|---|---|---|
| Desarrollo | Flutter 3.x + Dart | Framework multiplataforma móvil y web |
| Base de datos local | SQLite (sqflite) | Almacenamiento offline en dispositivo |
| Backend / nube | Supabase | Sincronización, autenticación y panel web |
| Control de versiones | Git + GitHub | Gestión del código fuente |
| Gestión de proyecto | Jira | Seguimiento de sprints SCRUM |
| Diseño UI/UX | Figma | Prototipado y diseño de interfaces |
| IDE | VS Code / Android Studio | Entorno de desarrollo |

---

## 📱 Pantallas de la aplicación

| # | Pantalla | Descripción |
|---|---|---|
| 1 | Login | Autenticación con Supabase, funciona offline |
| 2 | Dashboard | Estadísticas, modo offline y últimos registros |
| 3 | Buscar paciente | Búsqueda en SQLite local |
| 4 | Perfil del paciente | Hub central con acceso a módulos clínicos |
| 5 | Nuevo paciente — paso 1 | Datos personales y foto |
| 6 | Nuevo paciente — paso 2 | Datos clínicos e historial previo |
| 7 | Historial clínico | Línea de tiempo de consultas |
| 8 | Vacunación | Esquema de vacunas con alertas |
| 9 | Medicamentos | Gestión de medicamentos activos |
| 10 | Sincronización | Estado de sync en tiempo real |
| 11 | Exportar PDF | Generación de reportes clínicos |
| 🖥️ | Panel web médico | Dashboard con tabla de pacientes sincronizados |

🎨 **Ver prototipo en Figma:**(https://www.figma.com/design/g80EdSgkTcGQ8qkygyCegM/MediSyncro?node-id=0-1&t=8QQiQWp0rdUaB2Ql-1)

---

## 🏗️ Arquitectura del proyecto

MediSyncro implementa una arquitectura **offline-first de tres capas**:

```
Dispositivo móvil          Sincronización          Nube
┌─────────────────┐       ┌────────────┐       ┌──────────────┐
│   Flutter UI    │       │            │       │   Supabase   │
│   SQLite local  │──────▶│  API REST  │──────▶│  PostgreSQL  │
│ Motor de sync   │       │   HTTPS    │       │    Auth      │
└─────────────────┘       └────────────┘       └──────────────┘
   Funciona offline          Al detectar           Panel web
   100% sin internet         conexión              médico
```

### Estructura de carpetas

```
lib/
├── main.dart
├── core/
│   ├── constants/
│   ├── errors/
│   └── utils/
├── models/
│   ├── paciente.dart
│   ├── consulta.dart
│   ├── vacuna.dart
│   └── medicamento.dart
├── database/
│   ├── database_helper.dart
│   └── migrations/
├── repositories/
│   ├── paciente_repository.dart
│   ├── consulta_repository.dart
│   └── sync_repository.dart
├── services/
│   ├── supabase_service.dart
│   ├── pdf_service.dart
│   └── notification_service.dart
├── sync/
│   ├── sync_manager.dart
│   └── sync_queue.dart
└── ui/
    ├── screens/
    │   ├── login/
    │   ├── dashboard/
    │   ├── pacientes/
    │   ├── historial/
    │   ├── vacunas/
    │   ├── medicamentos/
    │   └── panel_web/
    └── widgets/
```

---

## 🌿 Ramas del repositorio

```
main                    ← código estable y probado
└── develop             ← integración de funcionalidades
    ├── feature/pacientes
    ├── feature/historial
    ├── feature/vacunas
    ├── feature/medicamentos
    ├── feature/sincronizacion
    ├── feature/pdf
    └── feature/panel-web
```

---

## 📋 Product Backlog

| ID | Historia de usuario | Prioridad | Sprint |
|---|---|---|---|
| HU-01 | Registrar paciente con foto, nombre, edad y contacto | Alta | Sprint 1 |
| HU-02 | Crear historiales clínicos offline con diagnóstico y tratamiento | Alta | Sprint 2 |
| HU-03 | Registrar vacunas aplicadas con fechas y recordatorios | Media | Sprint 3 |
| HU-04 | Gestionar medicamentos formulados por paciente | Media | Sprint 3 |
| HU-05 | Sincronizar datos automáticamente al tener internet | Alta | Sprint 4 |
| HU-06 | Consultar historiales desde un panel web | Media | Sprint 5 |
| HU-07 | Exportar historial clínico en PDF | Media | Sprint 5 |
| HU-08 | Aplicación funciona completamente sin internet | Alta | Sprints 4-6 |

---

## 🚀 Planificación de Sprints

| Sprint | Duración | Objetivo | Entregable |
|---|---|---|---|
| Sprint 1 | Semanas 1-2 | Registro de pacientes | Módulo CRUD pacientes en SQLite |
| Sprint 2 | Semanas 3-4 | Historial clínico offline | Módulo historial funcional sin internet |
| Sprint 3 | Semanas 5-6 | Vacunas y medicamentos | Módulos con notificaciones |
| Sprint 4 | Semanas 7-8 | Sincronización | Sync automático SQLite-Supabase |
| Sprint 5 | Semanas 9-10 | PDF y panel web | Exportación PDF + panel web con auth |
| Sprint 6 | Semanas 11-12 | Pruebas y correcciones | Sistema completo probado |

---

## 🧪 Pruebas y calidad

| Tipo | Herramienta | Cobertura meta |
|---|---|---|
| Unitarias | flutter_test | ≥ 80% |
| Integración | integration_test | Módulos core |
| Funcionales | flutter_driver | Flujos principales |

```
test/
├── unit/           → pruebas de modelos y lógica de negocio
├── integration/    → pruebas de SQLite y Supabase
└── functional/     → pruebas de flujos completos
```

---

## ⚙️ Cómo ejecutar el proyecto

### Prerrequisitos
- Flutter SDK 3.x instalado
- Android Studio o VS Code
- Dispositivo Android 5.0+ o emulador

### Pasos

```bash
# 1. Clonar el repositorio
git clone https://github.com/danielsierradev/MediSyncro.git

# 2. Entrar a la carpeta
cd MediSyncro

# 3. Instalar dependencias
flutter pub get

# 4. Ejecutar la aplicación
flutter run

# 5. Ejecutar pruebas
flutter test
```

---

## 📦 Releases

| Versión | Descripción |
|---|---|
| `v0.1.0-design` | Diseño UI/UX completo + arquitectura base ← actual |
| `v0.2.0` | Sprint 1 — Registro de pacientes |
| `v0.3.0` | Sprint 2 — Historial clínico offline |
| `v0.4.0` | Sprint 3 — Vacunas y medicamentos |
| `v0.5.0` | Sprint 4 — Sincronización SQLite-Supabase |
| `v0.6.0` | Sprint 5 — PDF y panel web |
| `v1.0.0` | Sprint 6 — Versión final |

---

## 📐 Marco jurídico

El proyecto cumple con la normativa colombiana vigente:

- Ley 1581 de 2012 — Protección de datos personales
- Ley 1273 de 2009 — Delitos informáticos
- Ley 2015 de 2020 — Historia clínica electrónica interoperable
- Resolución 839 de 2017 — Historia clínica y medios electrónicos
- CONPES 3995 de 2020 — Seguridad digital

---

## 👥 Equipo de desarrollo

| Nombre | Rol | Correo |
|---|---|---|
| Daniel Alejandro Sierra Chaparro | Product Owner / Desarrollador | dasierracha@unadvirtual.edu.co |
| Milena Salazar Sánchez | Scrum Master / Desarrolladora | msalazarsa@unadvirtual.edu.co |

**Institución:** Universidad Nacional Abierta y a Distancia — UNAD  
**Centro:** CEAD José Acevedo y Gómez  
**Zona:** Centro Bogotá Cundinamarca (ZCBC)  
**Programa:** Ingeniería de Sistemas  
**Escuela:** ECBTI

---

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

---

<div align="center">
  <strong>MediSyncro</strong> — Salud sin fronteras, datos sin límites
</div>
