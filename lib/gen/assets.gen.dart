/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/condo
  $AssetsImagesCondoGen get condo => const $AssetsImagesCondoGen();

  /// Directory path: assets/images/homes
  $AssetsImagesHomesGen get homes => const $AssetsImagesHomesGen();

  /// Directory path: assets/images/logo
  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();

  /// Directory path: assets/images/townhouse
  $AssetsImagesTownhouseGen get townhouse => const $AssetsImagesTownhouseGen();
}

class $AssetsImagesCondoGen {
  const $AssetsImagesCondoGen();

  /// File path: assets/images/condo/condo_1.jpg
  AssetGenImage get condo1 =>
      const AssetGenImage('assets/images/condo/condo_1.jpg');

  /// File path: assets/images/condo/condo_2.jpg
  AssetGenImage get condo2 =>
      const AssetGenImage('assets/images/condo/condo_2.jpg');

  /// File path: assets/images/condo/condo_3.jpg
  AssetGenImage get condo3 =>
      const AssetGenImage('assets/images/condo/condo_3.jpg');

  /// File path: assets/images/condo/condo_4.jpg
  AssetGenImage get condo4 =>
      const AssetGenImage('assets/images/condo/condo_4.jpg');

  /// File path: assets/images/condo/condo_5.jpg
  AssetGenImage get condo5 =>
      const AssetGenImage('assets/images/condo/condo_5.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [condo1, condo2, condo3, condo4, condo5];
}

class $AssetsImagesHomesGen {
  const $AssetsImagesHomesGen();

  /// File path: assets/images/homes/home_1.jpg
  AssetGenImage get home1 =>
      const AssetGenImage('assets/images/homes/home_1.jpg');

  /// File path: assets/images/homes/home_2.jpg
  AssetGenImage get home2 =>
      const AssetGenImage('assets/images/homes/home_2.jpg');

  /// File path: assets/images/homes/home_3.jpg
  AssetGenImage get home3 =>
      const AssetGenImage('assets/images/homes/home_3.jpg');

  /// File path: assets/images/homes/home_4.jpg
  AssetGenImage get home4 =>
      const AssetGenImage('assets/images/homes/home_4.jpg');

  /// File path: assets/images/homes/home_5.jpg
  AssetGenImage get home5 =>
      const AssetGenImage('assets/images/homes/home_5.jpg');

  /// File path: assets/images/homes/plan_1.jpeg
  AssetGenImage get plan1 =>
      const AssetGenImage('assets/images/homes/plan_1.jpeg');

  /// File path: assets/images/homes/plan_2.jpeg
  AssetGenImage get plan2 =>
      const AssetGenImage('assets/images/homes/plan_2.jpeg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [home1, home2, home3, home4, home5, plan1, plan2];
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/avatar.jpg
  AssetGenImage get avatar =>
      const AssetGenImage('assets/images/logo/avatar.jpg');

  /// File path: assets/images/logo/logo_your_home.svg
  SvgGenImage get logoYourHome =>
      const SvgGenImage('assets/images/logo/logo_your_home.svg');

  /// List of all assets
  List<dynamic> get values => [avatar, logoYourHome];
}

class $AssetsImagesTownhouseGen {
  const $AssetsImagesTownhouseGen();

  /// File path: assets/images/townhouse/townhouse_1.jpg
  AssetGenImage get townhouse1 =>
      const AssetGenImage('assets/images/townhouse/townhouse_1.jpg');

  /// File path: assets/images/townhouse/townhouse_2.jpg
  AssetGenImage get townhouse2 =>
      const AssetGenImage('assets/images/townhouse/townhouse_2.jpg');

  /// File path: assets/images/townhouse/townhouse_3.jpg
  AssetGenImage get townhouse3 =>
      const AssetGenImage('assets/images/townhouse/townhouse_3.jpg');

  /// File path: assets/images/townhouse/townhouse_4.jpg
  AssetGenImage get townhouse4 =>
      const AssetGenImage('assets/images/townhouse/townhouse_4.jpg');

  /// File path: assets/images/townhouse/townhouse_5.jpg
  AssetGenImage get townhouse5 =>
      const AssetGenImage('assets/images/townhouse/townhouse_5.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [townhouse1, townhouse2, townhouse3, townhouse4, townhouse5];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
