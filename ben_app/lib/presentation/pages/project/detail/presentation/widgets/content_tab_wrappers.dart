part of '../project_detail_page.dart';

class ContentTabWrapper extends StatelessWidget {
  const ContentTabWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: context.theme.scaffoldBackgroundColor,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: child,
    );
  }
}

class TileWrapper extends StatelessWidget {
  const TileWrapper({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final responsiveFrameworks = context.rf;
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 6),
      child: ResponsiveRowColumn(
        layout: responsiveFrameworks.largerThan(TABLET)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        children: children
            .map(
              (child) => ResponsiveRowColumnItem(
                child: child,
              ),
            )
            .toList(),
      ),
    );
  }
}

class FlexRowColumnWrapper extends StatelessWidget {
  const FlexRowColumnWrapper({
    super.key,
    required this.isRow,
    required this.child,
    required this.flex,
    this.paddingFallback = const EdgeInsets.all(12),
  });

  final bool isRow;
  final Widget child;
  final int flex;
  final EdgeInsets? paddingFallback;

  @override
  Widget build(BuildContext context) {
    if (isRow) {
      return Flexible(
        flex: flex,
        fit: FlexFit.tight,
        child: child,
      );
    }
    return Padding(
      padding: paddingFallback!,
      child: child,
    );
  }
}

class RowOrColumnData extends StatelessWidget {
  const RowOrColumnData({
    super.key,
    required this.title,
    required this.data,
  });

  final String data, title;

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: context.rf.equals(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      rowCrossAxisAlignment: CrossAxisAlignment.start,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      columnPadding: const EdgeInsets.only(bottom: 12),
      children: [
        ResponsiveRowColumnItem(
          child: Text(
            title.toUpperCase(),
            style: context.textTheme.bodyLarge!.copyWith(
              color: context.textTheme.bodyLarge!.color!.withOpacity(0.6),
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
            data,
            style: context.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
