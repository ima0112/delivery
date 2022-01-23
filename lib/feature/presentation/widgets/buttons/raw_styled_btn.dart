// 🐦 Flutter imports:
import 'package:delivery/core/style/styled_spacers.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:delivery/feature/presentation/widgets/decorated_container.dart';
import 'package:delivery/feature/presentation/widgets/positioned_all.dart';
import 'package:delivery/feature/presentation/widgets/rounded_card.dart';
import 'package:flutter/material.dart';

class BtnColors {
  BtnColors({required this.bg, required this.fg, this.outline});
  final Color bg;
  final Color fg;
  final Color? outline;
}

enum BtnTheme { primary, secondary, raw }

// A core btn that takes a child and wraps it in a btn that has a FocusNode.
// Colors are required. By default there is no padding.
// It takes care of adding a visual indicator  when the btn is Focused.
class RawBtn extends StatefulWidget {
  const RawBtn(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.normalColors,
      this.hoverColors,
      this.padding,
      this.focusMargin,
      this.enableShadow = true,
      this.enableFocus = true,
      this.ignoreDensity = false,
      this.cornerRadius,
      this.overlayColor = true})
      : super(key: key);
  final Widget child;
  final VoidCallback? onPressed;
  final BtnColors? normalColors;
  final BtnColors? hoverColors;
  final EdgeInsets? padding;
  final double? focusMargin;
  final bool enableShadow;
  final bool enableFocus;
  final bool overlayColor;
  final double? cornerRadius;
  final bool ignoreDensity;

  @override
  _RawBtnState createState() => _RawBtnState();
}

class _RawBtnState extends State<RawBtn> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode(canRequestFocus: widget.enableFocus);
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void didUpdateWidget(covariant RawBtn oldWidget) {
    _focusNode.canRequestFocus = widget.enableFocus;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MaterialStateProperty<T> getMaterialState<T>(
            {required T normal, required T hover}) =>
        MaterialStateProperty.resolveWith<T>((Set states) {
          if (states.contains(MaterialState.hovered)) return hover;
          if (states.contains(MaterialState.focused)) return hover;
          // if (states.contains(MaterialState.pressed)) return hover;
          return normal;
        });

    final theme = Theme.of(context).colorScheme;
    VisualDensity density = Theme.of(context).visualDensity;

    List<BoxShadow> shadows = (widget.enableShadow) ? Shadows.universal : [];
    BtnColors normalColors = widget.normalColors ??
        BtnColors(fg: greyMedium, bg: Colors.transparent);
    BtnColors hoverColors = widget.hoverColors ??
        BtnColors(fg: theme.primary, bg: theme.primary.withOpacity(.1));
    double focusMargin = widget.focusMargin ?? -5;

    return AnimatedOpacity(
      duration: Times.fast,
      opacity: widget.onPressed == null ? .7 : 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          /// Core Btn
          DecoratedContainer(
            borderRadius: widget.cornerRadius ?? Corners.custom,
            shadows: shadows,
            child: TextButton(
              focusNode: _focusNode,
              onPressed: widget.onPressed,
              style: ElevatedButton.styleFrom(
                      visualDensity: density,
                      disabledMouseCursor: SystemMouseCursors.basic,
                      textStyle: TextStyles.title1)
                  .copyWith(
                minimumSize: MaterialStateProperty.all(Size.zero),
                padding: widget.ignoreDensity
                    ? MaterialStateProperty.all(EdgeInsets.zero)
                    : null,
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      widget.cornerRadius ?? Corners.custom),
                )),
                side: getMaterialState(
                    normal: BorderSide(
                        color: normalColors.outline ?? Colors.transparent),
                    hover: BorderSide(
                        color: hoverColors.outline ?? Colors.transparent)),
                animationDuration: Duration(milliseconds: 150),
                overlayColor: widget.overlayColor
                    ? MaterialStateProperty.all(
                        Colors.grey[350]!.withOpacity(0.3))
                    : MaterialStateProperty.all(Colors.transparent),
                foregroundColor: getMaterialState(
                    normal: normalColors.fg, hover: hoverColors.fg),
                backgroundColor: getMaterialState(
                    normal: normalColors.bg, hover: hoverColors.bg),
              ),
              child: Padding(padding: EdgeInsets.zero, child: widget.child),
            ),
          ),

          /// Focus Decoration
          if (_focusNode.hasFocus) ...[
            PositionedAll(
              // Use negative margin for the focus state, so it lands outside our buttons actual footprint and doesn't mess up our alignments/paddings.
              all: focusMargin,
              child: RoundedBorder(
                  radius: widget.cornerRadius ??
                      (Corners.custom - (focusMargin * .6)),
                  color: theme.primary),
            )
          ],
        ],
      ),
    );
  }
}

// BtnContent that takes care of all the compact sizing and spacing
// Accepts label, icon and child, with child taking precedence.
class BtnContent extends StatelessWidget {
  const BtnContent(
      {Key? key,
      required this.label,
      this.icon,
      this.child,
      this.leadingIcon = false,
      this.isCompact = false,
      this.labelStyle,
      this.padding})
      : super(key: key);
  final bool leadingIcon;
  final bool isCompact;
  final Widget? child;
  final String label;
  final IconData? icon;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    bool hasIcon = icon != null;
    return Padding(
      padding: (padding == null)
          ? EdgeInsets.symmetric(horizontal: Insets.med, vertical: Insets.xs)
          : padding!,
      child: child ??
          Row(
            mainAxisSize: MainAxisSize.min,
            textDirection: leadingIcon ? TextDirection.rtl : TextDirection.ltr,
            children: [
              /// Label?

              Text((label).toUpperCase(),
                  style: labelStyle ??
                      (isCompact ? TextStyles.callout2 : TextStyles.callout1)),

              /// Spacer - Show if both pieces of content are visible
              if (hasIcon) ...[
                HSpace.sm,
              ],

              /// Icon?
              if (hasIcon) Icon(icon, size: isCompact ? 14 : 16),
            ],
          ),
    );
  }
}
