# Maintenance

## Purpose
Gate the whole app behind a maintenance mode when remote config says so.

## Exposed interface
- `MaintenanceBloc` — created in `MaintenanceWidget` (not in GetIt)
- `MaintenanceWidget` — top-level gate in `App.builder`
- `MaintenancePage` — full-screen maintenance UI
- `MaintenanceRepository` — `isMaintenanceActive` + `listen(onChange)` (DI)
- Relies on `RemoteConfig` (`lib/core/remote_config/`)

## Data flow
`RemoteConfig` → `MaintenanceRepositoryImpl` → `MaintenanceBloc` →
`MaintenanceWidget` → `MaintenancePage` | app child

## Mock seed
`bootstrap` loads `assets/mock/remote_config.json` for the mock flavor and
registers it in GetIt (defaults fill missing keys).

```json
{ "is_maintenance_mode": true }
```

In tests you can still build it directly:

```dart
RemoteConfigMockImpl.fromJson({
  RemoteConfigKeys.isMaintenanceMode: true,
});
```

## Priority
`ForceUpdateWidget` wraps this gate in `App`, so force update wins if both
flags are on.

## Known gaps
- Development/production use `RemoteConfigInactiveImpl` (always off)
