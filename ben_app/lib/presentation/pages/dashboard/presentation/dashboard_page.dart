import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
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
      body: BlocProvider(
        create: (context) => DashboardCubit(
          projectUsecase: getIt<ProjectUsecase>(),
        )..init(),
        child: Center(
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  final count = context.select<DashboardCubit, int>(
                    (cubit) => cubit.state.asLoaded?.data.projects.length ?? 0,
                  );
                  return Text('count : $count');
                },
              ),
              Builder(
                builder: (context) {
                  final cubit = context.read<DashboardCubit>();
                  return CustomButton.filled(
                    value: 'Importer',
                    onPressed: () async {
                      final result = await FilePicker.platform
                          .pickFiles(allowMultiple: true, type: FileType.image);
                      if (result?.files != null) {
                        cubit.setFiles(result!.files);
                        await cubit.createProject();
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
