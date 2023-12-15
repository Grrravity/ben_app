import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/pages/auth/cubit/auth_cubit.dart';
import 'package:ben_app/presentation/pages/auth/presentation/auth_layout.dart';
import 'package:ben_app/presentation/pages/auth/presentation/pages/login_page.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/form_text_field.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key, required this.code});

  static const String routeName = 'reset-password';
  static const String idPathParam = 'oobCode';
  final String code;

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: MainScaffold(
        withDrawer: false,
        appBar: MainAppBar(
          title: context.l10n.resetPasswordPage_AppBarTitle,
          hasLogout: false,
        ),
        body: ResetPasswordLayout(code: code),
      ),
    );
  }
}

class ResetPasswordLayout extends StatelessWidget {
  const ResetPasswordLayout({super.key, required this.code});

  final String code;

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: context.rf.largerThan(TABLET)
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
                      context.l10n.resetPasswordPage_pageTitle,
                      style: context.textTheme.displayLarge,
                    ),
                    Gap(context.spacing.wide),
                    const _PasswordFormField(),
                    Gap(context.spacing.small),
                    const _ConfirmPasswordFormField(),
                    Gap(context.spacing.wide),
                    _ResetButton(code),
                    Gap(context.spacing.wide),
                    const _BackHome(),
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

class _BackHome extends StatelessWidget {
  const _BackHome();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isProcessing = context.select<AuthCubit, bool>(
      (cubit) => cubit.state.asLoaded?.isSubmitting ?? false,
    );
    return CustomButton.filled(
      isProcessing: isProcessing,
      onPressed: () {
        context.goNamed(LoginPage.routeName);
      },
      primaryColor: context.theme.colorScheme.secondary,
      value: l10n.button_backHome.toUpperCase(),
      textStyle: context.theme.primaryTextTheme.bodyMedium,
    );
  }
}

class _ResetButton extends StatelessWidget {
  const _ResetButton(this.code);
  final String code;

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
        context.read<AuthCubit>().resetPassword(code).then(
              (value) =>
                  value == null ? context.goNamed(LoginPage.routeName) : null,
            );
      },
      value: l10n.button_reset.toUpperCase(),
      textStyle: context.theme.primaryTextTheme.bodyMedium,
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
