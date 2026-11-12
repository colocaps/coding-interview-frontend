import 'package:exchange_caclculator/features/force_update/domain/compare_versions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('compareVersions', () {
    test('orders semver segments', () {
      expect(compareVersions('1.0.0', '1.0.1'), lessThan(0));
      expect(compareVersions('1.2.0', '1.1.9'), greaterThan(0));
      expect(compareVersions('2.0.0', '2.0.0'), 0);
    });

    test('pads missing segments as zero', () {
      expect(compareVersions('1.0', '1.0.0'), 0);
      expect(compareVersions('1.0', '1.0.1'), lessThan(0));
    });
  });

  group('requiresForceUpdate', () {
    test('is true only when current is below minimum', () {
      expect(
        requiresForceUpdate(
          currentVersion: '1.0.0',
          minRequiredVersion: '1.0.1',
        ),
        isTrue,
      );
      expect(
        requiresForceUpdate(
          currentVersion: '1.0.1',
          minRequiredVersion: '1.0.1',
        ),
        isFalse,
      );
      expect(
        requiresForceUpdate(
          currentVersion: '1.0.0',
          minRequiredVersion: '',
        ),
        isFalse,
      );
    });
  });
}
