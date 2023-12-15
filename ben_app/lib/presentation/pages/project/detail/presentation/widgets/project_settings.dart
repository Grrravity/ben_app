part of '../project_detail_page.dart';

class ProjectSettingsTab extends StatelessWidget {
  const ProjectSettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.select<ProjectDetailCubit, ProjectSettings>(
      (cubit) => cubit.state.asLoaded!.data.project.settings,
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
              _SectionSettingsTile(settings),
              const Divider(),
              _IntersectionSettingsTile(settings),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionSettingsTile extends StatelessWidget {
  const _SectionSettingsTile(this.settings);

  final ProjectSettings settings;

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
            l10n.projectSettings_SectionTitle,
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        FlexRowColumnWrapper(
          isRow: responsiveFrameworks.largerThan(TABLET),
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                List.generate(settings.sectionPictureSetting.length, (index) {
              final setting = settings.sectionPictureSetting[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowOrColumnData(
                    title: l10n.projectSettings_sectionSettingName,
                    data: setting.name,
                  ),
                  if (!responsiveFrameworks.largerThan(TABLET))
                    RowOrColumnData(
                      title: l10n.projectSettings_sectionSettingImageCount,
                      data: setting.pictureCount.toString(),
                    ),
                ],
              );
            }),
          ),
        ),
        if (responsiveFrameworks.largerThan(TABLET))
          FlexRowColumnWrapper(
            isRow: responsiveFrameworks.largerThan(TABLET),
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  List.generate(settings.sectionPictureSetting.length, (index) {
                final setting = settings.sectionPictureSetting[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowOrColumnData(
                      title: l10n.projectSettings_sectionSettingImageCount,
                      data: setting.pictureCount.toString(),
                    ),
                  ],
                );
              }),
            ),
          ),
      ],
    );
  }
}

class _IntersectionSettingsTile extends StatelessWidget {
  const _IntersectionSettingsTile(this.settings);

  final ProjectSettings settings;

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
              l10n.projectSettings_IntersectionTitle,
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
            children: List.generate(settings.intersectionPictureSetting.length,
                (index) {
              final setting = settings.intersectionPictureSetting[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowOrColumnData(
                    title: l10n.projectSettings_sectionSettingName,
                    data: setting.name,
                  ),
                  if (!responsiveFrameworks.largerThan(TABLET))
                    RowOrColumnData(
                      title: l10n.projectSettings_sectionSettingImageCount,
                      data: setting.pictureCount.toString(),
                    ),
                ],
              );
            }),
          ),
        ),
        if (responsiveFrameworks.largerThan(TABLET))
          FlexRowColumnWrapper(
            isRow: responsiveFrameworks.largerThan(TABLET),
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  settings.intersectionPictureSetting.length, (index) {
                final setting = settings.intersectionPictureSetting[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowOrColumnData(
                      title: l10n.projectSettings_sectionSettingImageCount,
                      data: setting.pictureCount.toString(),
                    ),
                  ],
                );
              }),
            ),
          ),
      ],
    );
  }
}
