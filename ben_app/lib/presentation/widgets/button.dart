import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/theme/data/colors.dart';
import 'package:ben_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

/// A spacer whose height is equivalent to a CustomButton's one.
class CustomButtonVerticalSpacer extends StatelessWidget {
  const CustomButtonVerticalSpacer({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: 50 + 8,
      );
}

class CustomButton extends StatelessWidget {
  factory CustomButton.outlined({
    Key? key,
    required String value,
    required void Function() onPressed,
    Widget? startIcon,
    Widget? endIcon,
    double? width,
    double? height,
    bool enabled = true,
    Color? primaryColor,
    Color? borderColor,
    Color? backgroundColor,
    TextStyle? textStyle,
    bool? isProcessing,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
  }) {
    return CustomButton._(
      key: key,
      value: value.capitalize(),
      onPressed: onPressed,
      borderColor: borderColor ?? CustomColors.primaryLight,
      backgroundColor: backgroundColor ?? Colors.transparent,
      textColor: primaryColor ?? CustomColors.greyDark,
      startIcon: startIcon,
      endIcon: endIcon,
      width: width,
      height: height,
      enabled: enabled,
      textStyle: textStyle,
      isProcessing: isProcessing ?? false,
      padding: padding,
      borderRadius: borderRadius,
    );
  }

  /// Bouton arrondit , texte blanc , bordures et contenu en variante 700
  factory CustomButton.filled({
    Key? key,
    required String value,
    required void Function() onPressed,
    Widget? startIcon,
    Widget? endIcon,
    bool? isProcessing,
    double? width,
    double? height,
    bool enabled = true,
    Color? primaryColor,
    Color? disabledBackgroundColor,
    TextStyle? textStyle,
    EdgeInsets? padding,
    double? paddingLeftEndIcon,
    BorderRadius? borderRadius,
  }) {
    final textColor = enabled ? Colors.white : primaryColor;
    final borderColor = enabled ? Colors.transparent : primaryColor;

    final backgroundColor = enabled ? primaryColor : disabledBackgroundColor;

    return CustomButton._(
      key: key,
      value: value.capitalize(),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      textColor: textColor,
      startIcon: startIcon,
      endIcon: endIcon,
      isProcessing: isProcessing ?? false,
      width: width,
      height: height,
      enabled: enabled,
      textStyle: textStyle,
      padding: padding,
      paddingLeftEndIcon: paddingLeftEndIcon,
      borderRadius: borderRadius,
    );
  }

  factory CustomButton.filledNoBorder({
    Key? key,
    required String value,
    required void Function() onPressed,
    Widget? startIcon,
    Widget? endIcon,
    bool? isProcessing,
    double? width,
    double? height,
    bool enabled = true,
    Color foregroundColor = Colors.white,
    Color? disabledForegroundColor,
    required Color backgroundColor,
    Color? disabledBackgroundColor,
    TextStyle? textStyle,
    EdgeInsets? padding,
    double? paddingLeftEndIcon,
    BorderRadius? borderRadius,
  }) {
    final resolvedForegroundColor =
        enabled ? foregroundColor : disabledForegroundColor ?? foregroundColor;
    final resolvedbackgroundColor =
        enabled ? backgroundColor : disabledBackgroundColor ?? backgroundColor;

    return CustomButton._(
      key: key,
      value: value.capitalize(),
      onPressed: onPressed,
      backgroundColor: resolvedbackgroundColor,
      borderColor: Colors.transparent,
      textColor: resolvedForegroundColor,
      startIcon: startIcon,
      endIcon: endIcon,
      isProcessing: isProcessing ?? false,
      width: width,
      height: height,
      enabled: enabled,
      textStyle: textStyle,
      padding: padding,
      paddingLeftEndIcon: paddingLeftEndIcon,
      borderRadius: borderRadius,
    );
  }

  ///Bouton arrondit , texte blanc , bordures transparentes
  factory CustomButton.filledCustom({
    Key? key,
    required String value,
    required void Function() onPressed,
    Widget? startIcon,
    Widget? endIcon,
    double? width,
    double? height,
    bool enabled = true,
    Color? primaryColor,
    TextStyle? textStyle,
    bool? isProcessing,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
  }) {
    return CustomButton._(
      key: key,
      value: value.capitalize(),
      onPressed: onPressed,
      backgroundColor: primaryColor,
      textColor: Colors.white,
      startIcon: startIcon,
      endIcon: endIcon,
      width: width,
      height: height,
      enabled: enabled,
      textStyle: textStyle,
      isProcessing: isProcessing ?? false,
      padding: padding,
      borderRadius: borderRadius,
    );
  }

  ///Bouton faible arrondit , texte gris , bordures grises
  factory CustomButton.transparent({
    Key? key,
    required String value,
    required void Function() onPressed,
    Widget? startIcon,
    Widget? endIcon,
    double? width,
    double? height,
    TextStyle? textStyle,
    bool enabled = true,
    required Color primaryColor,
    bool? isProcessing,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
  }) {
    return CustomButton._(
      key: key,
      value: value.capitalize(),
      onPressed: onPressed,
      backgroundColor: Colors.transparent,
      borderColor: Colors.transparent,
      textColor: primaryColor,
      startIcon: startIcon,
      endIcon: endIcon,
      width: width,
      height: height,
      enabled: enabled,
      textStyle: textStyle,
      isProcessing: isProcessing ?? false,
      padding: padding,
      borderRadius: borderRadius,
    );
  }

  const CustomButton._({
    super.key,
    required this.value,
    required this.onPressed,
    this.startIcon,
    this.endIcon,
    this.backgroundColor,
    this.borderColor,
    this.width,
    this.height,
    this.textColor,
    this.enabled = true,
    this.textStyle,
    this.isProcessing = false,
    this.padding,
    this.paddingLeftEndIcon,
    this.borderRadius,
  });

  /// Permet d'afficher les différents design des boutons
  /// ```
  ///   CustomButton.outlined(
  ///       required String value,
  ///       required void Function() onPressed,
  ///       double? width,
  ///       double? height,
  ///       bool enabled = true,
  ///   ),
  /// ```
  ///
  final String value;
  final void Function() onPressed;
  final Widget? startIcon;
  final Widget? endIcon;
  final double? paddingLeftEndIcon;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? width, height;

  final Color? textColor;
  final bool enabled;
  final TextStyle? textStyle;
  final bool isProcessing;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ??
            const BorderRadius.all(
              Radius.circular(16),
            ),
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
          width: 1.2,
        ),
      ),
      color: backgroundColor ?? context.colorScheme.primary,
      child: InkWell(
        onTap: !isProcessing && enabled ? onPressed : null,
        child: Container(
          width: width,
          height: height ?? 48,
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              if (isProcessing)
                Center(
                  child: SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(
                      color: textColor ?? Colors.white,
                      strokeWidth: 3,
                    ),
                  ),
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (startIcon != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: startIcon,
                      ),
                    Container(),
                    Text(
                      value,
                      style: textStyle ??
                          context.textTheme.text1670016letter1
                              .copyWith(color: Colors.white),
                    ),
                    if (endIcon != null)
                      Padding(
                        padding: EdgeInsets.only(left: paddingLeftEndIcon ?? 8),
                        child: endIcon,
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ProcessingIndicator extends StatelessWidget {
//   const ProcessingIndicator({super.key});

//   @override
//   Widget build(BuildContext context) => const AspectRatio(
//         aspectRatio: 1,
//         child: CircularProgressIndicator(),
//       );
// }
