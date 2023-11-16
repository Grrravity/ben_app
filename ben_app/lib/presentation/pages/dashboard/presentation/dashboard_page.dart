import 'package:ben_app/presentation/pages/dashboard/cubit/dashboard_cubit.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: const MainAppBar(
        title: 'Accueil',
      ),
      body: Center(
        child: CustomButton.filled(
          value: 'Importer',
          onPressed: () async {
            await FilePicker.platform
                .pickFiles(allowMultiple: true, type: FileType.image)
                .then((result) {
              if (result?.files != null) {
                context.read<DashboardCubit>().createProject(result!.files);
              }
            });
          },
        ),
      ),
    );
  }
}
