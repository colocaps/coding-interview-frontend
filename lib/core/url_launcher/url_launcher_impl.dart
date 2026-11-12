import 'package:exchange_caclculator/core/url_launcher/url_launcher.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher_pkg;

@LazySingleton(as: UrlLauncher)
class UrlLauncherImpl implements UrlLauncher {
  @override
  Future<bool> open(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    if (!await url_launcher_pkg.canLaunchUrl(uri)) return false;
    return url_launcher_pkg.launchUrl(
      uri,
      mode: url_launcher_pkg.LaunchMode.externalApplication,
    );
  }
}
