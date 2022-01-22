import 'package:flutter/material.dart';

/// This will add luminance in dark mode, and remove it in light.
// Allows the view to just make something "stronger"
//or "weaker" without worrying what the current theme brightness is
//      color = theme.shift(someColor, .1); //-10% lum in dark mode, +10% in light mode
Color shift(Color c, double amt, {bool isDark = false}) {
  amt *= (isDark ? -1 : 1);
  var hslc = HSLColor.fromColor(c); // Convert to HSL
  double lightness =
      (hslc.lightness + amt).clamp(0, 1.0) as double; // Add/Remove lightness
  return hslc.withLightness(lightness).toColor(); // Convert back to Color
}
