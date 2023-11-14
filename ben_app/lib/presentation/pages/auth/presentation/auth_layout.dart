import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/theme/theme.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/pages/auth/cubit/auth_cubit.dart';
import 'package:ben_app/presentation/widgets/layout/error_layout.dart';
import 'package:ben_app/presentation/widgets/layout/loading_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthLayout extends StatefulWidget {
  const AuthLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(
        sessionUsecase: getIt<SessionUsecase>(),
      )..init(),
      child: BlocListener<AuthCubit, FormBlocState<AuthFormData>>(
        listener: (context, state) {
          state.maybeMap(
            loaded: (lState) {
              final failure = lState.failure;
              if (failure != null) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(
                        failure.localized(context),
                        style: context.textTheme.text1660024
                            .copyWith(color: Colors.white),
                      ),
                      backgroundColor: context.colorScheme.primary,
                    ),
                  );
              }

              if (lState.isSubmitted) {}
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<AuthCubit, FormBlocState<AuthFormData>>(
          builder: (context, state) {
            return state.map(
              loadFailed: (value) => ErrorLayout(
                value.failure,
              ),
              loading: (_) => const LoadingLayout(),
              loaded: (lState) => widget.child,
            );
          },
        ),
      ),
    );
  }
}
