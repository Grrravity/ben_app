part of '../project_detail_page.dart';

class ProjectSettings extends StatelessWidget {
  const ProjectSettings({super.key});

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
              _SectionSettingsTile(project),
              const Divider(),
              _IntersectionSettingsTile(project),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionSettingsTile extends StatelessWidget {
  const _SectionSettingsTile(this.project);

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
          paddingFallback: const EdgeInsets.only(bottom: 12),
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
            ],
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

class _IntersectionSettingsTile extends StatelessWidget {
  const _IntersectionSettingsTile(this.project);

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
                : const EdgeInsets.only(bottom: 12),
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
              RowOrColumnData(
                title: l10n.projectInformation_intersectionNumberTitle,
                data: project.totalIntersections.toString(),
              ),
            ],
          ),
        ),
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
