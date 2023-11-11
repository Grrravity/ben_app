import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/theme/data/colors.dart';
import 'package:ben_app/localization/l10n.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/form_text_field.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return MainScaffold(
      withDrawer: false,
      appBar: MainAppBar(
        title: l10n.loginPage_AppBarTitle,
        hasLogout: false,
        hasLeading: false,
      ),
      body: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Gap(16),
                    Text(
                      l10n.loginPage_pageTitle,
                      style: context.textTheme.displayLarge,
                    ),
                    const Gap(32),
                    const EmailFormField(),
                    const Gap(8),
                    const PasswordFormField(),
                    const Gap(32),
                    CustomButton.filled(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text(
                                Failure.connectivity.localized(context),
                              ),
                              backgroundColor: CustomColors.errorSnack,
                            ),
                          );
                      },
                      value: l10n.loginPage_loginButton.toUpperCase(),
                      textStyle: context.theme.primaryTextTheme.bodyMedium,
                    ),
                    const Gap(32),
                    CustomButton.filled(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text(
                                Failure.connectivity.localized(context),
                              ),
                              backgroundColor: CustomColors.errorSnack,
                            ),
                          );
                      },
                      primaryColor: context.theme.colorScheme.secondary,
                      value: l10n.loginPage_microsoftLogin.toUpperCase(),
                      startIcon: const Icon(
                        size: 16,
                        Icons.window,
                        color: Colors.white,
                      ),
                      textStyle: context.theme.primaryTextTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: ResponsiveVisibility(
              visible: false,
              visibleConditions: [
                Condition.largerThan(value: null, name: TABLET),
              ],
              child: Expanded(
                child: Container(
                  color: context.theme.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key, this.hint});

  final String? hint;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField.optional(
          key: const Key('EmailFormField'),
          initialValue: '',
          keyboardType: TextInputType.emailAddress,
          autocorrect: false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) => {},
          onSaved: (value) => {},
          onInputActionPressed: () => FocusScope.of(context).nextFocus(),
          label: l10n.loginPage_emailFieldLabel,
          hintText: l10n.loginPage_emailFieldHint,
        ),
      ],
    );
  }
}

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    this.label,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField.hiddenOptional(
          padding: const EdgeInsets.symmetric(vertical: 8),
          key: const Key('PasswordFormField'),
          initialValue: '',
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) => {},
          onSaved: (value) => {},
          onInputActionPressed: () => FocusScope.of(context).nextFocus(),
          label: l10n.loginPage_passwordFieldLabel,
          hintText: l10n.loginPage_passwordFieldHint,
          sufixIcon: IconButton(
            icon: const Icon(
              Icons.visibility,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
