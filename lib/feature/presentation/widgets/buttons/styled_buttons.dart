// 🐦 Flutter imports:
import 'package:delivery/core/style/styled_spacers.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:delivery/feature/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

/// Accent colored btn (orange), wraps RawBtn
class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn(
      {Key? key,
      required this.onPressed,
      required this.label,
      this.icon,
      this.child,
      this.leadingIcon = false,
      this.isCompact = false,
      this.cornerRadius,
      this.overlayColor = true,
      this.padding})
      : super(key: key);
  final Widget? child;
  final String label;
  final IconData? icon;
  final bool leadingIcon;
  final bool isCompact;
  final double? cornerRadius;
  final VoidCallback? onPressed;
  final bool overlayColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return RawBtn(
      overlayColor: overlayColor,
      cornerRadius: cornerRadius,
      normalColors: BtnColors(bg: theme.primary, fg: theme.surface),
      hoverColors: BtnColors(bg: theme.primary, fg: theme.surface),
      onPressed: onPressed,
      child: BtnContent(
        child: child,
        label: label,
        icon: icon,
        leadingIcon: leadingIcon,
        isCompact: isCompact,
        padding: padding,
      ),
    );
  }
}

class PrimaryTextBtn extends StatelessWidget {
  const PrimaryTextBtn(
      {Key? key,
      required this.onPressed,
      required this.label,
      this.icon,
      this.child,
      this.leadingIcon = false,
      this.isCompact = false,
      this.cornerRadius,
      this.overlayColor = true,
      this.outline = true,
      this.padding,
      this.textColor})
      : super(key: key);
  final Widget? child;
  final String label;
  final IconData? icon;
  final bool leadingIcon;
  final bool isCompact;
  final double? cornerRadius;
  final VoidCallback? onPressed;
  final bool overlayColor;
  final bool outline;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return RawBtn(
      enableShadow: false,
      overlayColor: overlayColor,
      cornerRadius: cornerRadius,
      normalColors: BtnColors(
          bg: Colors.transparent,
          fg: textColor ?? theme.primary,
          outline: (outline) ? theme.primary : Colors.transparent),
      hoverColors: BtnColors(bg: theme.primary, fg: theme.surface),
      onPressed: onPressed,
      child: BtnContent(
        child: child,
        label: label,
        icon: icon,
        leadingIcon: leadingIcon,
        isCompact: isCompact,
        padding: padding,
      ),
    );
  }
}

/// Surface colors btn (white), wraps RawBtn
class SecondaryBtn extends StatelessWidget {
  const SecondaryBtn({
    Key? key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.child,
    this.leadingIcon = false,
    this.isCompact = false,
    this.cornerRadius,
    this.overlayColor = true,
    this.padding,
  }) : super(key: key);
  final Widget? child;
  final String label;
  final IconData? icon;
  final bool leadingIcon;
  final bool isCompact;
  final double? cornerRadius;
  final VoidCallback? onPressed;
  final bool overlayColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    Widget content = BtnContent(
        padding: padding,
        child: child,
        label: label,
        icon: icon,
        leadingIcon: leadingIcon,
        isCompact: isCompact);
    if (isCompact) {
      return RawBtn(
          overlayColor: overlayColor,
          cornerRadius: cornerRadius,
          enableShadow: false,
          normalColors: BtnColors(
              bg: theme.background, fg: greyMedium, outline: greyWeak),
          hoverColors: BtnColors(
              bg: theme.primary.withOpacity(.15),
              fg: theme.primary,
              outline: theme.primary),
          onPressed: onPressed,
          child: content);
    }
    return RawBtn(
      normalColors: BtnColors(bg: theme.surface, fg: theme.primary),
      hoverColors: BtnColors(bg: theme.background, fg: theme.primary),
      onPressed: onPressed,
      child: content,
    );
  }
}

/// Takes any child, applies no padding, and falls back to default colors
class SimpleBtn extends StatelessWidget {
  const SimpleBtn(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.focusMargin,
      this.normalColors,
      this.hoverColors,
      this.cornerRadius,
      this.ignoreDensity,
      this.overlayColor = true})
      : super(key: key);
  final Widget child;
  final VoidCallback? onPressed;
  final double? focusMargin;
  final BtnColors? normalColors;
  final BtnColors? hoverColors;
  final double? cornerRadius;
  final bool? ignoreDensity;
  final bool overlayColor;

  @override
  Widget build(BuildContext context) {
    return RawBtn(
      overlayColor: overlayColor,
      cornerRadius: cornerRadius,
      normalColors: normalColors,
      hoverColors: hoverColors,
      focusMargin: focusMargin ?? 0,
      child: child,
      enableShadow: false,
      onPressed: onPressed,
      ignoreDensity: ignoreDensity ?? true,
    );
  }
}

/// Text Btn - wraps a [SimpleBtn]
class TextBtn extends StatelessWidget {
  const TextBtn(this.label,
      {Key? key,
      required this.onPressed,
      this.isCompact = false,
      this.style,
      this.showUnderline = false,
      this.cornerRadius,
      this.overlayColor = true,
      this.color,
      this.textAlign})
      : super(key: key);
  final String label;
  final Color? color;
  final VoidCallback? onPressed;
  final bool isCompact;
  final TextStyle? style;
  final bool showUnderline;
  final double? cornerRadius;
  final bool overlayColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    TextStyle finalStyle = style ??
        TextStyles.callout1.copyWith(
            color: color ?? theme.primary,
            decoration:
                showUnderline ? TextDecoration.underline : TextDecoration.none,
            fontWeight: FontWeight.w500);
    return SimpleBtn(
      overlayColor: overlayColor,
      ignoreDensity: false,
      cornerRadius: cornerRadius,
      onPressed: onPressed,
      child: Text(
        label,
        style: finalStyle,
        textAlign: textAlign,
      ),
    );
  }
}

/// Text Btn - wraps a [SimpleBtn]
class IconTextBtn extends StatelessWidget {
  const IconTextBtn(
    this.label, {
    Key? key,
    required this.onPressed,
    required this.icon,
    this.isCompact = false,
    this.style,
    this.showUnderline = false,
    this.cornerRadius,
    this.overlayColor = true,
    this.color,
  }) : super(key: key);
  final IconData icon;
  final Color? color;
  final String label;
  final VoidCallback? onPressed;
  final bool isCompact;
  final TextStyle? style;
  final bool showUnderline;
  final double? cornerRadius;
  final bool overlayColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    TextStyle finalStyle = style ??
        TextStyles.body2.copyWith(
            color: color ?? theme.primary,
            decoration:
                showUnderline ? TextDecoration.underline : TextDecoration.none,
            fontWeight: FontWeight.w500);
    return SimpleBtn(
      overlayColor: overlayColor,
      ignoreDensity: false,
      cornerRadius: cornerRadius,
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color ?? theme.primary, size: 18),
          HSpace(Insets.sm),
          Flexible(child: Text(label, style: finalStyle)),
        ],
      ),
    );
  }
}

/// Icon Btn - wraps a [SimpleBtn]
class IconBtn extends StatelessWidget {
  const IconBtn(this.icon,
      {Key? key,
      required this.onPressed,
      this.color,
      this.padding,
      this.ignoreDensity,
      this.cornerRadius = 100.0,
      this.overlayColor = true,
      this.splashRadius = 3})
      : super(key: key);
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? color;
  final EdgeInsets? padding;
  final bool? ignoreDensity;
  final double? cornerRadius;
  final bool overlayColor;
  final double splashRadius;

  @override
  Widget build(BuildContext context) {
    return SimpleBtn(
        overlayColor: overlayColor,
        ignoreDensity: ignoreDensity,
        cornerRadius: cornerRadius,
        child: AnimatedPadding(
          duration: Times.fast,
          curve: Curves.easeOut,
          padding: padding ?? EdgeInsets.all(Insets.xs + 0.0),
          child: Icon(icon,
              color: Theme.of(context).iconTheme.color ?? Colors.black,
              size: 20),
        ),
        onPressed: onPressed);
  }
}
