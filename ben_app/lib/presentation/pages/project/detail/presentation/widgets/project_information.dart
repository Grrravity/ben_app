part of '../project_detail_page.dart';

class ProjectInformationTab extends StatelessWidget {
  const ProjectInformationTab({super.key});

  @override
  Widget build(BuildContext context) {
    final project = context.select<ProjectDetailCubit, Project>(
      (cubit) => cubit.state.asLoaded!.data.project,
    );
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.maxFinite,
        ),
        child: ContentTabWrapper(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _MainTile(project),
              const Divider(),
              _SectionsTile(project),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainTile extends StatelessWidget {
  const _MainTile(this.project);

  final Project project;

  @override
  Widget build(BuildContext context) {
    final responsiveFrameworks = context.rf;
    final l10n = context.l10n;
    return TileWrapper(
      children: [
        FlexRowColumnWrapper(
          isRow: responsiveFrameworks.largerThan(TABLET),
          flex: 2,
          paddingFallback: const EdgeInsets.only(bottom: 6),
          child: Text(
            l10n.projectInformation_generalTileTitle,
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        FlexRowColumnWrapper(
          isRow: responsiveFrameworks.largerThan(TABLET),
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowOrColumnData(
                title: l10n.projectInformation_projectNameTitle,
                data: project.name,
              ),
              if (!responsiveFrameworks.largerThan(TABLET))
                RowOrColumnData(
                  title: l10n.projectInformation_parcoursNumberTitle,
                  data: project.parcoursReferences.length.toString(),
                ),
            ],
          ),
        ),
        if (responsiveFrameworks.largerThan(TABLET))
          FlexRowColumnWrapper(
            isRow: responsiveFrameworks.largerThan(TABLET),
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowOrColumnData(
                  title: l10n.projectInformation_parcoursNumberTitle,
                  data: project.parcoursReferences.length.toString(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _SectionsTile extends StatelessWidget {
  const _SectionsTile(this.project);

  final Project project;

  @override
  Widget build(BuildContext context) {
    final responsiveFrameworks = context.rf;
    final l10n = context.l10n;
    return TileWrapper(
      children: [
        FlexRowColumnWrapper(
          isRow: responsiveFrameworks.largerThan(TABLET),
          flex: 2,
          child: Padding(
            padding: responsiveFrameworks.largerThan(TABLET)
                ? EdgeInsets.zero
                : const EdgeInsets.only(bottom: 6),
            child: Text(
              l10n.projectInformation_SecIntersecTitle,
              style: context.theme.textTheme.titleLarge,
            ),
          ),
        ),
        FlexRowColumnWrapper(
          isRow: responsiveFrameworks.largerThan(TABLET),
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowOrColumnData(
                title: l10n.projectInformation_sectionNumberTitle,
                data: project.totalSections.toString(),
              ),
              if (!responsiveFrameworks.largerThan(TABLET))
                RowOrColumnData(
                  title: l10n.projectInformation_sectionDoneTitle,
                  data: project.doneSections.toString(),
                ),
              RowOrColumnData(
                title: l10n.projectInformation_intersectionNumberTitle,
                data: project.totalIntersections.toString(),
              ),
              if (!responsiveFrameworks.largerThan(TABLET))
                RowOrColumnData(
                  title: l10n.projectInformation_intersectionDoneTitle,
                  data: project.doneIntersections.toString(),
                ),
            ],
          ),
        ),
        if (responsiveFrameworks.largerThan(TABLET))
          FlexRowColumnWrapper(
            isRow: responsiveFrameworks.largerThan(TABLET),
            flex: 3,
            child: Padding(
              padding: responsiveFrameworks.largerThan(TABLET)
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowOrColumnData(
                    title: l10n.projectInformation_sectionDoneTitle,
                    data: project.doneSections.toString(),
                  ),
                  RowOrColumnData(
                    title: l10n.projectInformation_intersectionDoneTitle,
                    data: project.doneIntersections.toString(),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
