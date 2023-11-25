import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/utils/async_value.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:ben_app/presentation/pages/dashboard/cubit/dashboard_cubit.dart';
import 'package:ben_app/presentation/pages/project/create/presentation/project_create_page.dart';
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
    return MainScaffold(
      appBar: MainAppBar(
        title: 'Accueil',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomButton.filled(
              value: 'Créer un projet',
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
                  return const EmptyLayout('Aucun projet actuellement');
                }
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
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      project.name,
                                      style: context.textTheme.titleLarge,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: CustomButton.filled(
                                        value: 'Consulter',
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                expandedAlignment: Alignment.topLeft,
                                shape: const Border(),
                                childrenPadding: const EdgeInsets.all(12),
                                children: List.generate(project.parcours.length,
                                    (index) {
                                  final parcours = project.parcours[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Parcours N° ${index + 1}: ${parcours.name}',
                                          style: context.textTheme.bodyLarge!
                                              .copyWith(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${parcours.sections.length} section(s)',
                                              ),
                                              Text(
                                                '${parcours.intersections.length} intersection(s)',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
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
