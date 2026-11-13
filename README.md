# Bienvenido al coding-interview-frontend

## Descripción

Acá tienes todos los assets que necesitas para llevar a cabo una pequeña prueba técnica. El objetivo es que puedas demostrar tus habilidades de programación y de UI. El proyecto consiste de una pequeña calculadora que te muestra cuanto vas a recibir si quieres cambiar una determinada cantidad de una moneda a otra.

## Características

1. Hay dos tipos de monedas: "FIAT" y "CRYPTO".
2. La tasa de cambio la podrás obtener de nuestro API público.
3. La moneda del input

## API

- URL: https://74j6q7lg6a.execute-api.eu-west-1.amazonaws.com/stage/orderbook/public/recommendations
- Query Params:
  - `type`: 0 -> Cambio de CRYPTO a FIAT, 1 -> Cambio de FIAT a CRYPTO
  - `cryptoCurrencyId`: La moneda crypto (el ID está en el nombre del asset)
  - `fiatCurrencyId`: La moneda fiat (el ID está en el nombre del asset)
  - `amount`: Cantidad a cambiar
  - `amountCurrencyId`: La moneda en la que está del input

Del response, simplemente obtener el `data.byPrice.fiatToCryptoExchangeRate` y multiplicarlo/dividirlo para mostrar toda la data necesaria.

### Que puedes hacer:

- ✅ Preferiblemente, usa Flutter :)
- ✅ Cuantas mejoras de UX como veas necesarias/quieras
- ✅ No todo tiene que estar funcionando a la perfección, lo que más vamos a tomar en cuenta es el parecido con el diseño y la calidad del código.
- ✅ Desarrolla la app con la arquitecura de una app que va a escalar, no hagas un código que no puedas mantener en el futuro.

### Que **no** puedes hacer:

- ❌ Estresarte 🤗

## Pasos para comenzar

1. Haz un fork usando este repositorio como template
2. Clona el repositorio en tu máquina
3. Desarrolla la mini-app
4. Sube tus cambios a tu repositorio
5. Avísanos que has terminado
6. ???
7. PROFIT

### Cualquier duda contactarme a https://www.linkedin.com/in/carlosfontest/

---

## Descripción del trabajo realizado

### Features

| Feature          | Qué hace                                                               |
| ---------------- | ---------------------------------------------------------------------- |
| **Exchange**     | Calculadora FIAT ↔ CRYPTO contra el API (o mock).                      |
| **Maintenance**  | Gate top-level reactivo vía remote config (`is_maintenance_mode`).     |
| **Force update** | Gate top-level por versión mínima **por plataforma** + CTA a la store. |

Prioridad de gates en `App`: force update → maintenance → app.

### Arquitectura (por qué)

- **Clean Architecture + features**: dominio sin frameworks; data adapta remote/API; presentation solo UI/BLoC. Escala sin mezclar capas.
- **BLoC**: estado explícito, testeable, desacoplado de la UI. Los blocs de gates **no** van en GetIt (viven con el widget).
- **GetIt + injectable**: DI por ambiente (`mock` / `development` / `production`) sin acoplar constructores.
- **Core**: cross-cutting (`remote_config`, `app_info`, `url_launcher`, `observability`, networking, env).
- **Remote config**: puerto abstracto con `init` / `configs` / `listen`; mock carga `assets/mock/remote_config.json` (o defaults); dev/prod usan stub inactivo hasta un proveedor real.
- **Observability**: puerto abstracto (`track` / `trackError`); mock loguea; dev/prod son noop. Cableado: `FlutterError.onError` + `NavigatorObserver` de breadcrumbs en el router. El contrato queda abierto para otra impl (Sentry, etc.).
- **Design system (`EF*`)**: tokens + átomos/moléculas/organismos para UI consistente.
- **l10n**: es/en vía ARB.
- **ReactHandler**: fan-out reactivo interno sin exponer `StreamController` a callers.

### Ambientes

| Flavor        | Entry                       | Datos                                                         |
| ------------- | --------------------------- | ------------------------------------------------------------- |
| `mock`        | `lib/main_mock.dart`        | Datasource mock + remote config JSON + observability logger   |
| `development` | `lib/main_development.dart` | API real; remote config inactivo; observability noop          |
| `production`  | `lib/main_production.dart`  | API real; remote config inactivo; observability noop          |

Banner `MOCK` / `DEV` en no-producción.

### Mock remote config

Archivo: `assets/mock/remote_config.json`

```json
{
  "is_maintenance_mode": false,
  "min_required_version_android": "0.0.0",
  "min_required_version_ios": "0.0.0",
  "store_url_android": "https://play.google.com/store/apps/details?id=...",
  "store_url_ios": "https://apps.apple.com/app/id..."
}
```

Force update se activa si la versión de la app (`pubspec` → `package_info_plus`) es **menor** que el mínimo de la plataforma. Tras editar el JSON: **full restart** (no hot reload).

### Observability

Puerto en `lib/core/observability/`:

| Método        | Uso                                                              |
| ------------- | ---------------------------------------------------------------- |
| `track`       | Eventos / breadcrumbs (p. ej. navegación del router)             |
| `trackError`  | Errores con stack (`FlutterError.onError` en `bootstrap`)        |

| Ambiente              | Impl                         |
| --------------------- | ---------------------------- |
| `mock`                | `ObservabilityLoggerImpl`    |
| `development` / `production` | `ObservabilityNoopImpl` |

Navegación: `ObservabilityNavigatorObserver` registra breadcrumbs `type: navigation` en push/pop/replace/remove.

---

## Cómo ejecutar la app

> **Flutter:** `3.35.1` (FVM o SDK alineado)

### 1. Dependencias

```bash
flutter pub get
flutter gen-l10n
```

> `build_runner` puede fallar por incompatibilidad `retrofit_generator` / `retrofit`; los freezed/DI usados ya están generados en el repo.

### 2. Carpeta `.env` en la raíz

`appMock.json` / `appDev.json` / `appProd.json`:

```json
{
  "ENV": "mock",
  "BASE_URL": "https://74j6q7lg6a.execute-api.eu-west-1.amazonaws.com/"
}
```

(Ajustá `ENV` a `development` o `production` en los otros archivos.)

### 3. VS Code / Cursor — `.vscode/launch.json`

Usá las configs **Launch mock**, **Launch development**, **Launch production** (flavor + target + `--dart-define-from-file`).

CLI equivalente:

```bash
flutter run --flavor mock -t lib/main_mock.dart --dart-define-from-file=.env/appMock.json
flutter run --flavor development -t lib/main_development.dart --dart-define-from-file=.env/appDev.json
flutter run --flavor production -t lib/main_production.dart --dart-define-from-file=.env/appProd.json
```

### 4. Tests

```bash
flutter test
```
