part of '../project_detail_page.dart';

class ProjectDetailTab extends StatefulWidget {
  const ProjectDetailTab({
    super.key,
    this.tabIndex,
  });

  final int? tabIndex;

  @override
  State<ProjectDetailTab> createState() => _ProjectDetailTabState();
}

class _ProjectDetailTabState extends State<ProjectDetailTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final int tabLength = 3;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: widget.tabIndex ?? 0,
      length: tabLength,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: DefaultTabController(
        length: tabLength,
        child: Theme(
          data: theme.copyWith(
            colorScheme: Theme.of(context)
                .colorScheme
                .copyWith(surfaceVariant: Colors.transparent),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.theme.cardColor,
                ),
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorWeight: 0,
                  padding: EdgeInsets.zero,
                  labelPadding: const EdgeInsets.only(right: 12),
                  labelColor: theme.primaryColor,
                  labelStyle: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 1.5,
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                  tabs: const [
                    _DetailTab('Informations'),
                    _DetailTab('Parcours'),
                    _DetailTab('Paramètres'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    ProjectInformation(),
                    ProjectInformation(),
                    ProjectInformation(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailTab extends StatelessWidget {
  const _DetailTab(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Center(
        child: Text(label),
      ),
    );
  }
}
