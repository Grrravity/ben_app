part of '../project_detail_page.dart';

class ProjectInformation extends StatelessWidget {
  const ProjectInformation({super.key});

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 6),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
            child: _FlexRowColumnWrapper(
              isRow: ResponsiveBreakpoints.of(context).largerThan(TABLET),
              flex: 2,
              child: Padding(
                padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(bottom: 12),
                child: Text(
                  'Informations générales',
                  style: context.theme.textTheme.titleLarge,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: _FlexRowColumnWrapper(
              isRow: ResponsiveBreakpoints.of(context).largerThan(TABLET),
              flex: 3,
              child: Padding(
                padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context).equals(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnPadding: const EdgeInsets.only(bottom: 12),
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Nom du projet'.toUpperCase(),
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: context.textTheme.bodyLarge!.color!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ),
                        const ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: 8,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            project.name,
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: _FlexRowColumnWrapper(
              isRow: ResponsiveBreakpoints.of(context).largerThan(TABLET),
              flex: 3,
              child: Padding(
                padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context).equals(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnPadding: const EdgeInsets.only(bottom: 12),
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Nombre de parcours'.toUpperCase(),
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: context.textTheme.bodyLarge!.color!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ),
                        const ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: 8,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            project.parcoursReferences.length.toString(),
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionsTile extends StatelessWidget {
  const _SectionsTile(this.project);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 6),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
            child: _FlexRowColumnWrapper(
              isRow: ResponsiveBreakpoints.of(context).largerThan(TABLET),
              flex: 2,
              child: Padding(
                padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(bottom: 12),
                child: Text(
                  'Sections et intersections',
                  style: context.theme.textTheme.titleLarge,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: _FlexRowColumnWrapper(
              isRow: ResponsiveBreakpoints.of(context).largerThan(TABLET),
              flex: 3,
              child: Padding(
                padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context).equals(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnPadding: const EdgeInsets.only(bottom: 12),
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Nombre de sections'.toUpperCase(),
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: context.textTheme.bodyLarge!.color!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ),
                        const ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: 8,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            project.totalSections.toString(),
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context).equals(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnPadding: const EdgeInsets.only(bottom: 12),
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            "Nombre d'intersections".toUpperCase(),
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: context.textTheme.bodyLarge!.color!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ),
                        const ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: 8,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            project.totalIntersections.toString(),
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: _FlexRowColumnWrapper(
              isRow: ResponsiveBreakpoints.of(context).largerThan(TABLET),
              flex: 3,
              child: Padding(
                padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context).equals(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnPadding: const EdgeInsets.only(bottom: 12),
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Sections effectuées'.toUpperCase(),
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: context.textTheme.bodyLarge!.color!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ),
                        const ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: 8,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            project.doneSections.toString(),
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context).equals(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnPadding: const EdgeInsets.only(bottom: 12),
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Intersections effectuées'.toUpperCase(),
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: context.textTheme.bodyLarge!.color!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ),
                        const ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: 8,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            project.doneIntersections.toString(),
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FlexRowColumnWrapper extends StatelessWidget {
  const _FlexRowColumnWrapper({
    required this.isRow,
    required this.child,
    required this.flex,
  });

  final bool isRow;
  final Widget child;
  final int flex;

  @override
  Widget build(BuildContext context) {
    if (isRow) {
      return Flexible(
        flex: flex,
        fit: FlexFit.tight,
        child: child,
      );
    }
    return child;
  }
}
