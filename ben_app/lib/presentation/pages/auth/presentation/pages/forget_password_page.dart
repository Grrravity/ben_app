import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/pages/auth/cubit/auth_cubit.dart';
import 'package:ben_app/presentation/pages/auth/presentation/auth_layout.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/form_text_field.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:ben_app/presentation/widgets/toastbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  static const String routeName = 'forget-password';

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: MainScaffold(
        withDrawer: false,
        appBar: MainAppBar(
          title: context.l10n.forgetPasswordPage_AppBarTitle,
          hasLogout: false,
          isNavigation: true,
        ),
        body: const ForgetPasswordLayout(),
      ),
    );
  }
}

class ForgetPasswordLayout extends StatelessWidget {
  const ForgetPasswordLayout({
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
                      l10n.forgetPasswordPage_pageTitle,
                      style: context.textTheme.displayLarge,
                    ),
                    Gap(context.spacing.wide),
                    const _EmailFormField(),
                    Gap(context.spacing.regular),
                    Gap(context.spacing.wide),
                    const _ForgetPasswordButton(),
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

class _ForgetPasswordButton extends StatelessWidget {
  const _ForgetPasswordButton();

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
        context.read<AuthCubit>().requestNewPassword().then((value) {
          if (value == null) {
            ShowSnackBar.showSuccess(
              title: l10n.forgetPasswordPage_successSnack,
            );
          }
        });
      },
      value: l10n.button_reset.toUpperCase(),
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
