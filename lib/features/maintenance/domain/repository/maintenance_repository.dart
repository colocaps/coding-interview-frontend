abstract class MaintenanceRepository {
  bool get isMaintenanceActive;

  Future<void> listen(void Function({required bool isActive}) onChange);
}
