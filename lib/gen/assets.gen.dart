/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  AssetGenImage get arrowRight =>
      const AssetGenImage('assets/icons/arrow_right.png');
  AssetGenImage get categoryCard1 =>
      const AssetGenImage('assets/icons/category_card_1.png');
  AssetGenImage get categoryCard2 =>
      const AssetGenImage('assets/icons/category_card_2.png');
  AssetGenImage get demoProduct1 =>
      const AssetGenImage('assets/icons/demo_product_1.png');
  AssetGenImage get demoProduct2 =>
      const AssetGenImage('assets/icons/demo_product_2.png');
  AssetGenImage get demoSmallBanner =>
      const AssetGenImage('assets/icons/demo_small_banner.png');
  String get facebook => 'assets/icons/facebook.svg';
  String get google => 'assets/icons/google.svg';
  String get homeBlack24dp => 'assets/icons/home_black_24dp.svg';
  String get icBag => 'assets/icons/ic_bag.svg';
  AssetGenImage get icDemoAvatar =>
      const AssetGenImage('assets/icons/ic_demo_avatar.png');
  String get icFavorite => 'assets/icons/ic_favorite.svg';
  String get icFilter => 'assets/icons/ic_filter.svg';
  String get icHome => 'assets/icons/ic_home.svg';
  String get icHomeInactive => 'assets/icons/ic_home_inactive.svg';
  String get icProfile => 'assets/icons/ic_profile.svg';
  String get icShop => 'assets/icons/ic_shop.svg';
  String get icSort => 'assets/icons/ic_sort.svg';
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
