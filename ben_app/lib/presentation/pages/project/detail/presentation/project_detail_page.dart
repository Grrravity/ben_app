import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/utils/async_value.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/entities/project/project_settings.dart';
import 'package:ben_app/domain/usecase/parcours_usecase.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:ben_app/presentation/pages/project/detail/cubit/project_detail_cubit.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:ben_app/presentation/widgets/layout/error_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

part 'widgets/content_tab_wrappers.dart';
part 'widgets/project_detail_tab.dart';
part 'widgets/project_information.dart';
part 'widgets/project_settings.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key, required this.projectId});
  final String projectId;
  static const String routeName = 'project-detail';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectDetailCubit(
        projectUsecase: getIt<ProjectUsecase>(),
        parcoursUsecase: getIt<ParcoursUsecase>(),
      )..init(projectId),
      child:
          BlocBuilder<ProjectDetailCubit, AsyncValue<ProjectDetailState, void>>(
        builder: (context, state) {
          return state.map(
            loaded: (_) {
              final projectName = context.select<ProjectDetailCubit, String>(
                (cubit) => cubit.state.asLoaded!.data.project.name,
              );
              return MainScaffold(
                backgroundColor: context.theme.cardColor,
                appBar: MainAppBar(
                  title: projectName,
                  isNavigation: true,
                ),
                body: const _DetailContent(),
              );
            },
            loading: (_) => const Center(child: CircularProgressIndicator()),
            failure: (state) => Center(child: ErrorLayout(state.failure)),
          );
        },
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  const _DetailContent();

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: ProjectDetailTab(
          tabIndex: 1,
        ),
      ),
    );
  }
}
