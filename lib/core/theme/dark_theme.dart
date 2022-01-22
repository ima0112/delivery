import 'package:delivery/core/style/styles.dart';
import 'package:delivery/core/utils/color_shift.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData get darkThemeData {
  Color accent = Colors.orange;
  Color bg = Colors.grey[850]!;
  Color surface = const Color(0xff333333);
  Color mainTextColor = Colors.white;
  Color inverseTextColor = Colors.black;

  var theme = ThemeData.from(
    textTheme: ThemeData.dark().textTheme,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: accent,
        primaryVariant: shift(accent, .1, isDark: true),
        secondary: accent,
        secondaryVariant: shift(accent, .1, isDark: true),
        background: bg,
        surface: surface,
        onBackground: mainTextColor,
        onSurface: mainTextColor,
        onError: mainTextColor,
        onPrimary: inverseTextColor,
        onSecondary: inverseTextColor,
        error: error),
  );

  // Apply additional styling that is missed by ColorScheme
  theme = theme.copyWith(
    applyElevationOverlayColor: false,
    scaffoldBackgroundColor: bg,
    primaryColor: accent,
    accentColor: accent,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[800],
      errorStyle: TextStyle(
        color: error,
      ),
      errorMaxLines: 3,
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: Corners.customBorder,
        borderSide: BorderSide(
            color: theme.colorScheme.error, width: 1, style: BorderStyle.solid),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: Corners.customBorder,
        borderSide: BorderSide(
            color: theme.colorScheme.error, width: 1, style: BorderStyle.solid),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: Corners.customBorder,
        borderSide:
            BorderSide(color: greyWeak, width: 1, style: BorderStyle.solid),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: Corners.customBorder,
        borderSide: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      isDense: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 10.0,
      backgroundColor: bg,
      unselectedItemColor: grey,
      selectedItemColor: accent,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: Corners.customBorder,
      ),
      elevation: 6.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
    ),
    tabBarTheme: TabBarTheme(
      labelPadding: kTabLabelPadding,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: accent,
        ),
        insets: EdgeInsets.symmetric(horizontal: 8.0),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: accent,
      unselectedLabelColor: grey,
      labelStyle: TextStyles.body1,
      unselectedLabelStyle: TextStyles.body1,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: bg,
      elevation: 0.0,
      iconTheme: ThemeData.dark().iconTheme,
    ),
    accentIconTheme: ThemeData.dark().accentIconTheme,
    iconTheme: ThemeData.dark().iconTheme,
    toggleableActiveColor: accent,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Corners.custom),
      ),
    ),
    chipTheme: ChipThemeData(
      pressElevation: 2.0,
      backgroundColor: greyWeak,
      disabledColor: Colors.white,
      selectedColor: accent,
      secondarySelectedColor: shift(accent, .35, isDark: true),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      labelStyle: TextStyles.callout1.copyWith(color: greyMedium),
      secondaryLabelStyle: TextStyles.callout1.copyWith(color: accent),
      brightness: Brightness.dark,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(Corners.xl)),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: accent,
      selectionColor: accent,
      selectionHandleColor: accent,
    ),
  );

  // All done, return the ThemeData
  return theme;
}

