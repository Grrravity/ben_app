import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/theme/data/colors.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';
import 'package:ben_app/localization/l10n.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/pages/auth/cubit/auth_cubit.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/form_text_field.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      withDrawer: false,
      appBar: MainAppBar(
        title: context.l10n.loginPage_AppBarTitle,
        hasLogout: false,
      ),
      body: BlocProvider(
        create: (context) => AuthCubit(sessionUsecase: getIt<SessionUsecase>()),
        child: const LoginLayout(),
      ),
    );
  }
}

class LoginLayout extends StatelessWidget {
  const LoginLayout({
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
                  const _EmailFormField(),
                  const Gap(8),
                  const _PasswordFormField(),
                  const Gap(32),
                  const _LoginButton(),
                  const Gap(32),
                  const _LoginWithMicrosoftButton(),
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
    );
  }
}

class _LoginWithMicrosoftButton extends StatelessWidget {
  const _LoginWithMicrosoftButton();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CustomButton.filled(
      onPressed: () {
        context.read<AuthCubit>().loginWithMicrosoft().then((failure) {
          if (failure != null) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(
                    failure.localized(context),
                  ),
                  backgroundColor: CustomColors.errorSnack,
                ),
              );
          }
        });
      },
      primaryColor: context.theme.colorScheme.secondary,
      value: l10n.loginPage_microsoftLogin.toUpperCase(),
      startIcon: const Icon(
        size: 16,
        Icons.window,
        color: Colors.white,
      ),
      textStyle: context.theme.primaryTextTheme.bodyMedium,
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CustomButton.filled(
      onPressed: () {
        context.read<AuthCubit>().login().then((failure) {
          if (failure != null) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(
                    failure.localized(context),
                  ),
                  backgroundColor: CustomColors.errorSnack,
                ),
              );
          }
        });
      },
      value: l10n.loginPage_loginButton.toUpperCase(),
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
