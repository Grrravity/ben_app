import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/theme/theme.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/pages/auth/cubit/auth_cubit.dart';
import 'package:ben_app/presentation/pages/auth/presentation/auth_layout.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/form_text_field.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static const String routeName = 'register';

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: MainScaffold(
        withDrawer: false,
        appBar: MainAppBar(
          title: context.l10n.registerPage_appbarTitle,
          hasLogout: false,
          isNavigation: true,
        ),
        body: const RegisterLayout(),
      ),
    );
  }
}

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap(context.spacing.regular),
                    Text(
                      l10n.registerPage_pageTitle,
                      style: context.textTheme.displayLarge,
                    ),
                    Gap(context.spacing.wide),
                    const _EmailFormField(),
                    Gap(context.spacing.small),
                    const _PasswordFormField(),
                    Gap(context.spacing.small),
                    const _ConfirmPasswordFormField(),
                    Gap(context.spacing.wide),
                    const _RegisterButton(),
                  ],
                ),
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
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isProcessing = context.select<AuthCubit, bool>(
      (cubit) => cubit.state.asLoaded?.isSubmitting ?? false,
    );
    return CustomButton.filled(
      isProcessing: isProcessing,
      onPressed: () {
        FocusManager.instance.primaryFocus?.unfocus();
        context.read<AuthCubit>().register().then((value) {
          if (value != null) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(
                    'Compte créé',
                    style: context.textTheme.text1660024
                        .copyWith(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                ),
              );
          }
        });
      },
      value: l10n.registerPage_registerButton.toUpperCase(),
      textStyle: context.theme.primaryTextTheme.bodyMedium,
    );
  }
}

class _EmailFormField extends StatelessWidget {
  const _EmailFormField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final email = context.select<AuthCubit, EmailInput?>(
      (cubit) => cubit.state.asLoaded?.data.email,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField.optional(
          key: const Key('EmailFormField'),
          initialValue: email?.value ?? '',
          keyboardType: TextInputType.emailAddress,
          autocorrect: false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) => context.read<AuthCubit>().setEmail(value),
          onSaved: (value) => context.read<AuthCubit>().setEmail(value),
          onInputActionPressed: () => FocusScope.of(context).nextFocus(),
          validator: (value) => email?.failure?.localized(context),
          label: l10n.loginPage_emailFieldLabel,
          hintText: l10n.loginPage_emailFieldHint,
        ),
      ],
    );
  }
}

class _PasswordFormField extends StatelessWidget {
  const _PasswordFormField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final password = context.select<AuthCubit, PasswordInput?>(
      (cubit) => cubit.state.asLoaded?.data.password,
    );
    final obscure = context.select<AuthCubit, bool?>(
      (cubit) => cubit.state.asLoaded?.data.hidden,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField.hiddenOptional(
          padding: const EdgeInsets.symmetric(vertical: 8),
          key: const Key('PasswordFormField'),
          initialValue: password?.value ?? '',
          obscureText: obscure ?? true,
          keyboardType: TextInputType.visiblePassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) => context.read<AuthCubit>().setPassword(value),
          onSaved: (value) => context.read<AuthCubit>().setPassword(value),
          onInputActionPressed: () => FocusScope.of(context).nextFocus(),
          validator: (value) => password?.failure?.localized(context),
          label: l10n.loginPage_passwordFieldLabel,
          hintText: l10n.loginPage_passwordFieldHint,
          sufixIcon: IconButton(
            icon: Icon(
              (obscure ?? true) ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              context.read<AuthCubit>().toggleObscure(
                    obscure ?? true,
                  );
            },
          ),
        ),
      ],
    );
  }
}

class _ConfirmPasswordFormField extends StatelessWidget {
  const _ConfirmPasswordFormField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final password = context.select<AuthCubit, PasswordInput?>(
      (cubit) => cubit.state.asLoaded?.data.confirmPassword,
    );
    final obscure = context.select<AuthCubit, bool?>(
      (cubit) => cubit.state.asLoaded?.data.hidden,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField.hiddenOptional(
          padding: const EdgeInsets.symmetric(vertical: 8),
          key: const Key('PasswordFormField'),
          initialValue: password?.value ?? '',
          obscureText: obscure ?? true,
          keyboardType: TextInputType.visiblePassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) =>
              context.read<AuthCubit>().setConfirmPassword(value),
          onSaved: (value) =>
              context.read<AuthCubit>().setConfirmPassword(value),
          onInputActionPressed: () => FocusScope.of(context).nextFocus(),
          validator: (value) => password?.failure?.localized(context),
          label: l10n.resetPassword_confirmPasswordLabel,
          hintText: l10n.loginPage_passwordFieldHint,
          sufixIcon: IconButton(
            icon: Icon(
              (obscure ?? true) ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              context.read<AuthCubit>().toggleObscure(
                    obscure ?? true,
                  );
            },
          ),
        ),
      ],
    );
  }
}
