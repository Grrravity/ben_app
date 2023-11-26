part of 'extension_export.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  Spacing get spacing => theme.spacing;

  ButtonsStyles get buttonsStyles => theme.buttons;

  ThemeRadius get radius => theme.radius;

  AppLocalizations get l10n => AppLocalizations.of(this);
}
