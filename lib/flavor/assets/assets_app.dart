abstract class AssetsApp {
  String get logo;
}

class IdeagriAssets implements AssetsApp {
  @override
  String get logo => 'assets/ideagri/logo.png';
}

class PiracanjubaAssets implements AssetsApp {
  @override
  String get logo => 'assets/piracanjuba/logo.png';
}
