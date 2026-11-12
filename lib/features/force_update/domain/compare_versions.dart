/// Semver-ish compare: negative if [a] < [b], 0 if equal,
/// positive if [a] > [b].
int compareVersions(String a, String b) {
  final aParts = _parts(a);
  final bParts = _parts(b);
  final length = aParts.length > bParts.length ? aParts.length : bParts.length;

  for (var i = 0; i < length; i++) {
    final aValue = i < aParts.length ? aParts[i] : 0;
    final bValue = i < bParts.length ? bParts[i] : 0;
    if (aValue != bValue) return aValue.compareTo(bValue);
  }
  return 0;
}

/// True when [currentVersion] is strictly below [minRequiredVersion].
bool requiresForceUpdate({
  required String currentVersion,
  required String minRequiredVersion,
}) {
  if (minRequiredVersion.trim().isEmpty) return false;
  return compareVersions(currentVersion, minRequiredVersion) < 0;
}

List<int> _parts(String version) {
  final core = version.split('+').first.split('-').first;
  return core
      .split('.')
      .map((part) => int.tryParse(part.trim()) ?? 0)
      .toList(growable: false);
}
