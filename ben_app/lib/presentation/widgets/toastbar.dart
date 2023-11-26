import 'package:ben_app/core/theme/data/colors.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

class ShowSnackBar {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showError({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.error(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccess({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.success(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSimple({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.simple(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showWarning({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.warning(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class Toaster extends SnackBar {
  /// ```
  /// Toast.simple(
  ///   context: context,
  ///   message: 'Ce modèle a bien été ajouté',
  ///   action: SnackBarAction(
  ///     label: 'ACCEDER',
  ///     onPressed: () {
  ///     },
  ///   ),
  /// ),
  /// ```
  factory Toaster.simple({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? CustomColors.greyDark,
      content: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Manrope',
              ),
              maxLines: message != null ? 1 : 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (message != null) const SizedBox(width: 4),
            if (message != null)
              Text(
                message,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Manrope',
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
      margin: useDefaultMargin ?? false
          ? null
          : const EdgeInsets.fromLTRB(125, 5, 15, 10),
    );
  }

  factory Toaster.error({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? CustomColors.toastBackgroundRed,
      content: IntrinsicHeight(
        //height: 55,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.error,
                size: 26,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Manrope',
                    ),
                    maxLines: message != null ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (message != null) const SizedBox(width: 4),
                  if (message != null)
                    Text(
                      message,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Manrope',
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
      margin: useDefaultMargin ?? false
          ? null
          : const EdgeInsets.fromLTRB(125, 5, 15, 10),
    );
  }

  factory Toaster.warning({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? CustomColors.toastBackgroundOrange,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: IntrinsicHeight(
          //height: 55,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.warning,
                  size: 26,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Manrope',
                      ),
                      maxLines: message != null ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (message != null) const SizedBox(width: 4),
                    if (message != null)
                      Text(
                        message,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Manrope',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
      margin: useDefaultMargin ?? false
          ? null
          : const EdgeInsets.fromLTRB(125, 5, 15, 10),
    );
  }

  factory Toaster.success({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
    bool? useDefaultMargin,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? CustomColors.toastBackgroundGreen,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.check,
                  size: 26,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Manrope',
                      ),
                      maxLines: message != null ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (message != null) const SizedBox(width: 4),
                    if (message != null)
                      Text(
                        message,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Manrope',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
      margin: useDefaultMargin ?? false
          ? null
          : const EdgeInsets.fromLTRB(125, 5, 15, 10),
    );
  }

  const Toaster._({
    required super.content,
    required super.duration,
    required Color super.backgroundColor,
    super.action,
    super.behavior,
    super.margin,
  });

  /// ```
  /// Toast.showSnackBar(
  ///   context: context,
  ///   snackBar: Toast.simple(
  ///     message: 'Ce modèle a bien été ajouté',
  ///   ),
  /// );
  /// ```
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      showSnackBar({
    required SnackBar snackBar,
  }) {
    snackbarKey.currentState?.clearSnackBars();
    return snackbarKey.currentState!.showSnackBar(snackBar);
  }
}
