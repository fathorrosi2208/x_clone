import 'package:flutter/material.dart';
import 'dart:math';

/// Extension methods on ColorScheme to provide additional color utilities
extension ColorSchemeExtensions on ColorScheme {
  /// Generates a disabled color with reduced opacity
  Color get disabledColor => onSurface.withOpacity(0.38);

  /// Creates a slightly elevated surface color based on elevation
  Color elevatedSurface(double elevation) {
    if (elevation == 0) return surface;
    final opacity = (4.5 * log(elevation + 1) + 2) / 100;
    return Color.alphaBlend(Colors.white.withOpacity(opacity), surface);
  }

  /// Shifts a color's lightness by the given amount
  Color shiftLightness(Color color, double amount) {
    final hsl = HSLColor.fromColor(color);
    return hsl
        .withLightness((hsl.lightness + amount).clamp(0.0, 1.0))
        .toColor();
  }

  /// Returns a more subtle text color for secondary content
  Color get secondaryTextColor {
    // For light theme, use a darker gray
    // For dark theme, use a lighter gray
    return brightness == Brightness.light
        ? const Color(0xFF71767B) // Twitter gray for light mode
        : const Color(0xFF8899A6); // Softer gray for dark mode
  }

  /// Returns a color with reduced contrast for hints or placeholders
  Color get hintColor {
    return onSurface.withOpacity(0.6);
  }

  /// Generates a semi-transparent version of the primary color
  Color get primaryTranslucent {
    return primary.withOpacity(0.1);
  }
}

/// Extension methods on Color for additional color manipulations
extension ColorUtilityExtensions on Color {
  /// Creates a color with adjusted opacity
  Color withCustomOpacity(double opacity) {
    return withOpacity(opacity.clamp(0.0, 1.0));
  }

  /// Determines if the color is considered light or dark
  bool get isLight {
    return computeLuminance() > 0.5;
  }

  /// Returns a contrasting text color (black or white) for readability
  Color get contrastTextColor {
    return isLight ? Colors.black : Colors.white;
  }

  /// Generates a complementary color
  Color get complementary {
    return Color.fromRGBO(
      255 - red,
      255 - green,
      255 - blue,
      alpha / 255.0,
    );
  }
}
