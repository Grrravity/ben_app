import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/presentation/pages/dashboard/presentation/dashboard_page.dart';
import 'package:ben_app/presentation/pages/project/create/presentation/project_create_page.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/utils/unfocus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    this.appBar,
    this.menuSelectedIndex = 0,
    required this.body,
    this.withDrawer = true,
  });

  final MainAppBar? appBar;
  final Widget body;
  final int menuSelectedIndex;
  final bool withDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.onTertiaryContainer,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: const Size(double.maxFinite, 60),
              child: kIsWeb
                  ? appBar!
                  : Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).viewPadding.top,
                      ),
                      child: appBar,
                    ),
            )
          : null,
      body: SafeArea(
        top: appBar == null,
        child: Stack(
          children: [
            Padding(
              padding: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
                  ? const EdgeInsets.only(left: 30)
                  : const EdgeInsets.only(left: 110),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                  color: context.theme.scaffoldBackgroundColor,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Unfocus(child: body),
                ),
              ),
            ),
            if (withDrawer)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CustomDrawer(index: menuSelectedIndex),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: CustomPaint(
                      painter: _CornerPainter(
                        color: context.theme.colorScheme.onTertiaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class MenuElement {
  const MenuElement({
    required this.icon,
    required this.label,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final void Function() onTap;

  static List<MenuElement> getMenuElements({
    required BuildContext context,
  }) {
    final l10n = context.l10n;
    return [
      MenuElement(
        icon: Icons.folder,
        label: l10n.drawerItem_Project,
        onTap: () => context.goNamed(DashboardPage.routeName),
      ),
      MenuElement(
        icon: Icons.upload,
        label: l10n.drawerItem_Import,
        onTap: () => context.goNamed(ProjectCreatePage.routeName),
      ),
      MenuElement(
        icon: Icons.download,
        label: l10n.drawerItem_Export,
        onTap: () => context.goNamed('Routes.export'),
      ),
    ];
  }
}

class _CustomDrawer extends StatefulWidget {
  const _CustomDrawer({required this.index});

  final int index;

  @override
  State<_CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<_CustomDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _forward() async {
    try {
      _controller.stop();
      await _controller.forward();
    } on TickerCanceled {
      // the animation got canceled, probably because it was disposed of
    }
  }

  Future<void> _reverse() async {
    try {
      _controller.stop();
      await _controller.reverse();
    } on TickerCanceled {
      // the animation got canceled, probably because it was disposed of
    }
  }

  @override
  Widget build(BuildContext context) {
    final shouldHover = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
    final isSmallLayout = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return shouldHover
        ? GestureDetector(
            onTap: () => _controller.isCompleted ? _reverse() : _forward(),
            child: _AnimatedDrawer(
              controller: _controller,
              index: widget.index,
              isSmallLayout: isSmallLayout,
            ),
          )
        : MouseRegion(
            child: _AnimatedDrawer(
              controller: _controller,
              index: widget.index,
              isSmallLayout: isSmallLayout,
            ),
            onEnter: (a) {
              _forward();
            },
            onExit: (a) {
              _reverse();
            },
          );
  }
}

class _AnimatedDrawer extends StatelessWidget {
  _AnimatedDrawer({
    required this.controller,
    required this.index,
    required this.isSmallLayout,
  })  : drawerWidth = Tween<double>(
          begin: isSmallLayout ? 40 : 110,
          end: 260,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0,
              1,
            ),
          ),
        ),
        opacityExpanded = Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.6,
              1,
            ),
          ),
        ),
        opacityShrinked = Tween<double>(
          begin: 1,
          end: 0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.9,
              1,
            ),
          ),
        );

  final AnimationController controller;

  final Animation<double> drawerWidth;

  final Animation<double> opacityExpanded;
  final Animation<double> opacityShrinked;
  final int index;
  final bool isSmallLayout;

  Widget _buildAnimation(BuildContext context, Widget? child, int index) {
    final menuElements = MenuElement.getMenuElements(context: context);
    return Container(
      width: drawerWidth.value,
      color: context.theme.colorScheme.onTertiaryContainer,
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              if (opacityShrinked.value != 0)
                Opacity(
                  opacity: opacityShrinked.value,
                  child: _ShrinkedMenuColumn(
                    index: index,
                    menuElements: menuElements,
                  ),
                ),
              Opacity(
                opacity: opacityExpanded.value,
                child: SizedOverflowBox(
                  alignment: Alignment.topCenter,
                  size: Size(260, MediaQuery.of(context).size.height - 150),
                  child: _ExpandedMenuColumn(
                    index: index,
                    menuElements: menuElements,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => _buildAnimation(context, child, index),
    );
  }
}

class _ShrinkedMenuColumn extends StatelessWidget {
  const _ShrinkedMenuColumn({
    required this.index,
    required this.menuElements,
  });

  final int index;
  final List<MenuElement> menuElements;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        ...List.generate(
          menuElements.length,
          (i) => _ShrinkedMenuElement(
            isSelected: i == index,
            element: menuElements[i],
          ),
        ),
      ],
    );
  }
}

class _ShrinkedMenuElement extends StatelessWidget {
  const _ShrinkedMenuElement({
    required this.isSelected,
    required this.element,
  });

  final bool isSelected;
  final MenuElement element;
  @override
  Widget build(BuildContext context) {
    final isSmallLayout = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Container(
      height: 56,
      color: isSelected
          ? context.theme.primaryColor.withOpacity(0.5)
          : context.theme.colorScheme.onTertiaryContainer,
      child: InkWell(
        onTap: element.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            width: double.maxFinite,
            padding: isSmallLayout
                ? const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 6,
                  )
                : const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 40,
                  ),
            child: Row(
              children: [
                Icon(
                  element.icon,
                  color: //isSelected ? context.theme.primaryColor:
                      context.theme.colorScheme.onPrimary,
                  size: isSmallLayout ? 24 : 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ExpandedMenuColumn extends StatelessWidget {
  const _ExpandedMenuColumn({
    required this.index,
    required this.menuElements,
  });

  final int index;
  final List<MenuElement> menuElements;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        ...List.generate(
          menuElements.length,
          (i) => _ExpandedMenuElement(
            isSelected: i == index,
            element: menuElements[i],
          ),
        ),
      ],
    );
  }
}

class _ExpandedMenuElement extends StatelessWidget {
  const _ExpandedMenuElement({
    required this.isSelected,
    required this.element,
  });

  final bool isSelected;
  final MenuElement element;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: context.theme.colorScheme.onTertiaryContainer,
      child: Material(
        color: isSelected
            ? context.theme.primaryColor.withOpacity(0.5)
            : context.theme.colorScheme.onTertiaryContainer,
        child: InkWell(
          splashColor: context.theme.primaryColor.withOpacity(0.5),
          hoverColor:
              isSelected ? Colors.transparent : context.theme.primaryColor,
          onTap: element.onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 40,
              ),
              child: Row(
                children: [
                  Icon(
                    element.icon,
                    color: //isSelected ? context.theme.primaryColor :
                        context.theme.colorScheme.onPrimary,
                    size: 30,
                  ),
                  const SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Text(
                      element.label,
                      style: isSelected
                          ? context.theme.primaryTextTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              //color: context.theme.primaryColor,
                            )
                          : context.theme.primaryTextTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CornerPainter extends CustomPainter {
  _CornerPainter({
    required this.color,
  });

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;
    final backgroundPath = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(3, 3, size.width, 0)
      ..lineTo(0, 0)
      ..lineTo(0, size.height);

    canvas.drawPath(backgroundPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
