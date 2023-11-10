import 'package:ben_app/core/extension/extension_export.dart';
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
    return MainScaffold(
      appBar: const MainAppBar(
        title: 'Connection',
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
                      'Connectez-vous',
                      style: context.textTheme.displayLarge,
                    ),
                    const Gap(32),
                    const EmailFormField(),
                    const Gap(16),
                    const PasswordFormField(),
                    const Gap(16),
                    CustomButton.filled(
                      onPressed: () async {},
                      value: 'Connection'.toUpperCase(),
                      textStyle: context.textTheme.bodyMedium!
                          .copyWith(color: Colors.white),
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
          label: 'Email',
          hintText: 'Entrez votre email',
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
          label: 'Mot de passe',
          hintText: 'Entrez votre mot de passe',
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
