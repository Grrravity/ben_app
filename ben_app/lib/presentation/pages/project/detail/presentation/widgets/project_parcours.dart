part of '../project_detail_page.dart';

class ProjectParcoursTab extends StatelessWidget {
  const ProjectParcoursTab({super.key});

  @override
  Widget build(BuildContext context) {
    final parcours = context.select<ProjectDetailCubit, List<Parcours>>(
      (cubit) => cubit.state.asLoaded!.data.parcours,
    );
    final projectId = context.select<ProjectDetailCubit, String>(
      (cubit) => cubit.state.asLoaded!.data.project.id,
    );
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.maxFinite,
        ),
        child: ContentTabWrapper(
          child: ListView.builder(
            itemCount: parcours.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                child: ExpansionTile(
                  expandedAlignment: Alignment.topLeft,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  childrenPadding: const EdgeInsets.all(12),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  collapsedBackgroundColor:
                      context.colorScheme.surface.withOpacity(0.6),
                  backgroundColor: context.colorScheme.surface.withOpacity(0.6),
                  title: _TileTitle(
                    parcour: parcours[index],
                    projectId: projectId,
                  ),
                  //children: [
                  //  _AchievementTile(project),
                  //  _ParcousTiles(project),
                  //],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _TileTitle extends StatelessWidget {
  const _TileTitle({
    required this.parcour,
    required this.projectId,
  });

  final Parcours parcour;
  final String projectId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                parcour.name,
                style: context.rf.smallerOrEqualTo(MOBILE)
                    ? context.textTheme.titleMedium
                    : context.textTheme.titleLarge,
              ),
              if (parcour.municipalities.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Municipalités',
                      style: context.rf.smallerOrEqualTo(MOBILE)
                          ? context.textTheme.titleSmall
                          : context.textTheme.titleMedium,
                    ),
                    Wrap(
                      children: List.generate(
                        parcour.municipalities.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            index == parcour.municipalities.length - 1
                                ? parcour.municipalities[index]
                                : '${parcour.municipalities[index]},',
                            style: context.rf.smallerOrEqualTo(MOBILE)
                                ? context.textTheme.bodyMedium
                                : context.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              if (parcour.ways.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rues',
                      style: context.rf.smallerOrEqualTo(MOBILE)
                          ? context.textTheme.titleSmall
                          : context.textTheme.titleMedium,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Wrap(
                        children: List.generate(
                          parcour.ways.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              index == parcour.ways.length - 1
                                  ? parcour.ways[index]
                                  : '${parcour.ways[index]},',
                              style: context.rf.smallerOrEqualTo(MOBILE)
                                  ? context.textTheme.bodyMedium
                                  : context.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 12),
          child: CustomButton.filled(
            value: l10n.projectDetail_showParcoursButton,
            onPressed: () => context.goNamed(
              ProjectDetailPage.routeName,
              pathParameters: {
                'projectId': projectId,
                'parcoursPath': parcour.id,
              },
            ),
          ),
        ),
      ],
    );
  }
}
