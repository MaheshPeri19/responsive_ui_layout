import 'package:responsive_ui_layout/responsive_ui_layout.dart';

/// Extension to use values using [num]
extension Responsive on num {
  /// [getter] to get [responsive height] according to device height
  double get height => ResponsiveConfig.heightMultiplier! * this;

  /// [getter] to get [responsive width] according to device width
  double get width => ResponsiveConfig.widthMultiplier! * this;

  /// [getter] to get [responsive fontSize] according to device width
  double get fontSize => ResponsiveConfig.textMultiplier! * this;

  /// [getter] to get [responsive imageSize] according to device height
  double get imageSize => ResponsiveConfig.imageSizeMultiplier! * this;
}
