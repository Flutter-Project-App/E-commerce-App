/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  String get metropolisBlack => 'assets/fonts/Metropolis-Black.otf';
  String get metropolisBlackItalic => 'assets/fonts/Metropolis-BlackItalic.otf';
  String get metropolisBold => 'assets/fonts/Metropolis-Bold.otf';
  String get metropolisBoldItalic => 'assets/fonts/Metropolis-BoldItalic.otf';
  String get metropolisExtraBold => 'assets/fonts/Metropolis-ExtraBold.otf';
  String get metropolisExtraBoldItalic =>
      'assets/fonts/Metropolis-ExtraBoldItalic.otf';
  String get metropolisExtraLight => 'assets/fonts/Metropolis-ExtraLight.otf';
  String get metropolisExtraLightItalic =>
      'assets/fonts/Metropolis-ExtraLightItalic.otf';
  String get metropolisLight => 'assets/fonts/Metropolis-Light.otf';
  String get metropolisLightItalic => 'assets/fonts/Metropolis-LightItalic.otf';
  String get metropolisMedium => 'assets/fonts/Metropolis-Medium.otf';
  String get metropolisMediumItalic =>
      'assets/fonts/Metropolis-MediumItalic.otf';
  String get metropolisRegular => 'assets/fonts/Metropolis-Regular.otf';
  String get metropolisRegularItalic =>
      'assets/fonts/Metropolis-RegularItalic.otf';
  String get metropolisSemiBold => 'assets/fonts/Metropolis-SemiBold.otf';
  String get metropolisSemiBoldItalic =>
      'assets/fonts/Metropolis-SemiBoldItalic.otf';
  String get metropolisThin => 'assets/fonts/Metropolis-Thin.otf';
  String get metropolisThinItalic => 'assets/fonts/Metropolis-ThinItalic.otf';
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  AssetGenImage get arrowRight =>
      const AssetGenImage('assets/icons/arrow_right.png');
  AssetGenImage get categoryCard1 =>
      const AssetGenImage('assets/icons/category_card_1.png');
  AssetGenImage get categoryCard2 =>
      const AssetGenImage('assets/icons/category_card_2.png');
  AssetGenImage get demoBag1 =>
      const AssetGenImage('assets/icons/demo_bag_1.png');
  AssetGenImage get demoBag2 =>
      const AssetGenImage('assets/icons/demo_bag_2.png');
  AssetGenImage get demoBag3 =>
      const AssetGenImage('assets/icons/demo_bag_3.png');
  AssetGenImage get demoProduct1 =>
      const AssetGenImage('assets/icons/demo_product_1.png');
  AssetGenImage get demoProduct2 =>
      const AssetGenImage('assets/icons/demo_product_2.png');
  AssetGenImage get demoSmallBanner =>
      const AssetGenImage('assets/icons/demo_small_banner.png');
  String get facebook => 'assets/icons/facebook.svg';
  String get google => 'assets/icons/google.svg';
  String get homeBlack24dp => 'assets/icons/home_black_24dp.svg';
  String get icBagActive => 'assets/icons/ic_bag_active.svg';
  String get icBagInactive => 'assets/icons/ic_bag_inactive.svg';
  AssetGenImage get icDemoAvatar =>
      const AssetGenImage('assets/icons/ic_demo_avatar.png');
  String get icFavoriteActive => 'assets/icons/ic_favorite_active.svg';
  String get icFavoriteInactive => 'assets/icons/ic_favorite_inactive.svg';
  String get icFilter => 'assets/icons/ic_filter.svg';
  String get icHome => 'assets/icons/ic_home.svg';
  String get icHomeInactive => 'assets/icons/ic_home_inactive.svg';
  String get icProfileActive => 'assets/icons/ic_profile_active.svg';
  String get icProfileInactive => 'assets/icons/ic_profile_inactive.svg';
  String get icShopActive => 'assets/icons/ic_shop_active.svg';
  String get icShopInactive => 'assets/icons/ic_shop_inactive.svg';
  String get icSort => 'assets/icons/ic_sort.svg';
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
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
