import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/utils/async_value.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:ben_app/presentation/pages/dashboard/cubit/dashboard_cubit.dart';
import 'package:ben_app/presentation/pages/project/create/presentation/project_create_page.dart';
import 'package:ben_app/presentation/pages/project/detail/presentation/project_detail_page.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:ben_app/presentation/widgets/layout/empty_layout.dart';
import 'package:ben_app/presentation/widgets/layout/error_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return MainScaffold(
      appBar: MainAppBar(
        title: l10n.dashboard_appbarTitle,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomButton.filled(
              value: l10n.createProjectButton,
              onPressed: () => context.goNamed(ProjectCreatePage.routeName),
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => DashboardCubit(
          projectUsecase: getIt<ProjectUsecase>(),
        )..init(),
        child: BlocBuilder<DashboardCubit, AsyncValue<DashboardState, void>>(
          builder: (context, state) {
            return state.map(
              loaded: (_) {
                final projects = context.select<DashboardCubit, List<Project>>(
                  (cubit) => cubit.state.asLoaded?.data.projects ?? [],
                );
                if (projects.isEmpty) {
                  return EmptyLayout(l10n.dashboard_noProjectAtm);
                }
                return _Projects(projects);
              },
              loading: (_) => const Center(child: CircularProgressIndicator()),
              failure: (state) => Center(child: ErrorLayout(state.failure)),
            );
          },
        ),
      ),
    );
  }
}

class _Projects extends StatelessWidget {
  const _Projects(this.projects);

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    expandedAlignment: Alignment.topLeft,
                    shape: const Border(),
                    childrenPadding: const EdgeInsets.all(12),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: _TileTitle(project: project),
                    children: [
                      _AchievementTile(project),
                      _ParcousTiles(project),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TileTitle extends StatelessWidget {
  const _TileTitle({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          project.name,
          style: context.textTheme.titleLarge,
        ),
        Container(
          padding: const EdgeInsets.only(right: 12),
          child: CustomButton.filled(
            value: l10n.dashboard_showProjectButton,
            onPressed: () => context.goNamed(
              ProjectDetailPage.routeName,
              pathParameters: {
                'projectId': project.id,
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _AchievementTile extends StatelessWidget {
  const _AchievementTile(
    this.project,
  );

  final Project project;

  @override
  Widget build(BuildContext context) {
    final doneSection = '${project.doneSections}/${project.totalSections}';
    final doneIntersection =
        '${project.doneIntersections}/${project.totalIntersections}';
    final l10n = context.l10n;
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: l10n.dashboard_FilledSectionsLabel,
                  style: context.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: doneSection,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: l10n.dashboard_filledIntersectionLabel,
                  style: context.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: doneIntersection,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ParcousTiles extends StatelessWidget {
  const _ParcousTiles(
    this.project,
  );

  final Project project;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Wrap(
      children: List.generate(project.parcoursReferences.length, (index) {
        final parcours = project.parcoursReferences[index];
        return Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Wrap(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: l10n.dashboard_parcoursNumber(
                        index + 1,
                      ),
                      style: context.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: parcours.path.split('/').last.split('_')[1],
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
