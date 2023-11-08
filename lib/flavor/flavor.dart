import 'package:poc_flavor/flavor/assets/assets_app.dart';
import 'package:poc_flavor/flavor/theme/theme.dart';

class FlavorApp {
  final ThemeApp theme;
  final AssetsApp images;

  FlavorApp(String flavor)
      : theme = _getTheme(flavor),
        images = _getImages(flavor);

  static ThemeApp _getTheme(String flavor) {
    switch (flavor) {
      case 'ideagri':
        return IdeagriTheme();
      case 'piracanjuba':
        return PiracanjubaTheme();
      default:
        return IdeagriTheme();
    }
  }

  static AssetsApp _getImages(String flavor) {
    switch (flavor) {
      case 'ideagri':
        return IdeagriAssets();
      case 'piracanjuba':
        return PiracanjubaAssets();
      default:
        return IdeagriAssets();
    }
  }
}
