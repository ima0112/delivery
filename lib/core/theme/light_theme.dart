// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import 'package:delivery/core/style/styles.dart';
import 'package:delivery/core/utils/color_shift.dart';
import 'package:delivery/core/utils/constant.dart';

ThemeData get lightThemeData {
  Color accent = Colors.orangeAccent;
  Color bg = Colors.grey[50]!;
  Color surface = const Color(0xFFFFFFFF);
  Color mainTextColor = Colors.black;
  Color inverseTextColor = Colors.white;

  var theme = ThemeData.from(
    textTheme: ThemeData.light().textTheme,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: accent,
      primaryVariant: shift(accent, .1),
      secondary: accent,
      secondaryVariant: shift(accent, .1),
      background: bg,
      surface: surface,
      onBackground: mainTextColor,
      onSurface: mainTextColor,
      onError: mainTextColor,
      onPrimary: inverseTextColor,
      onSecondary: inverseTextColor,
      error: error,
    ),
  );

  theme = theme.copyWith(
    applyElevationOverlayColor: false,
    scaffoldBackgroundColor: bg,
    primaryColor: accent,
    accentColor: accent,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[200],
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
      color: bg,
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
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: bg,
      elevation: 0.0,
      iconTheme: ThemeData.light().iconTheme,
    ),
    accentIconTheme: ThemeData.light().accentIconTheme,
    iconTheme: ThemeData.light().iconTheme,
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
      secondarySelectedColor: shift(accent, .35),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      labelStyle: TextStyles.callout1.copyWith(color: greyMedium),
      secondaryLabelStyle: TextStyles.callout1.copyWith(color: accent),
      brightness: Brightness.light,
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
