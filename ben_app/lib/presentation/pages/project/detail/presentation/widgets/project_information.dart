part of '../project_detail_page.dart';

class ProjectInformation extends StatelessWidget {
  const ProjectInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.maxFinite,
        ),
        child: Card(
          color: context.theme.scaffoldBackgroundColor,
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
                Divider(),
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
                Divider(),
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
                Divider(),
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
                Divider(),
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
                Divider(),
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
                Divider(),
                Text('eazeaz'),
                Divider(),
                Text('azdqs'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
