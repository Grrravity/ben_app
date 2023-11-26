import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/theme/theme.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:ben_app/presentation/pages/dashboard/presentation/dashboard_page.dart';
import 'package:ben_app/presentation/pages/project/create/cubit/project_create_cubit.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/button.dart';
import 'package:ben_app/presentation/widgets/form_text_field.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:ben_app/presentation/widgets/layout/error_layout.dart';
import 'package:ben_app/presentation/widgets/toastbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProjectCreatePage extends StatelessWidget {
  const ProjectCreatePage({super.key});

  static const String routeName = 'create-project';

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      menuSelectedIndex: 1,
      appBar: const MainAppBar(
        title: 'Créer un projet',
      ),
      body: BlocProvider(
        create: (context) => ProjectCreateCubit(
          projectUsecase: getIt<ProjectUsecase>(),
        ),
        child:
            BlocListener<ProjectCreateCubit, FormBlocState<ProjectCreateState>>(
          listener: (context, state) {
            if (state.failure != null) {
              ShowSnackBar.showError(
                title: state.failure!.localized(context),
                duration: state.failure == Failure.fileNameInvalid
                    ? const Duration(seconds: 10)
                    : null,
              );
            }
          },
          child: BlocBuilder<ProjectCreateCubit,
              FormBlocState<ProjectCreateState>>(
            builder: (context, state) {
              return state.map(
                loaded: (_) {
                  final cubit = context.read<ProjectCreateCubit>();
                  final projectName =
                      context.select<ProjectCreateCubit, StringInput>(
                    (cubit) => cubit.state.asLoaded!.data.projectName,
                  );
                  final sectionSettings =
                      context.select<ProjectCreateCubit, MapIntInput>(
                    (cubit) => cubit.state.asLoaded!.data.sectionPictureSetting,
                  );
                  final intersectionSettings =
                      context.select<ProjectCreateCubit, MapIntInput>(
                    (cubit) =>
                        cubit.state.asLoaded!.data.intersectionPictureSetting,
                  );
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'Paramétrages général',
                              style: context.textTheme.titleLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 12,
                            ),
                            child: CustomTextFormField.required(
                              label: 'Nom du projet',
                              initialValue: projectName.value,
                              hintText: 'renseignez le nom du projet',
                              onChanged: cubit.setProjectName,
                              onSaved: cubit.setProjectName,
                              validator: (_) =>
                                  projectName.failure.localized(context),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'Paramétrages des sections',
                              style: context.textTheme.titleLarge,
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: sectionSettings.value!.entries.length,
                            itemBuilder: (context, index) {
                              final element = sectionSettings.value!.entries
                                  .elementAt(index);
                              return Row(
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: CustomTextFormField.required(
                                        label: 'Titre de la section photo',
                                        initialValue: element.key,
                                        hintText: 'renseignez un nom',
                                        onChanged: (key) => cubit
                                            .setSectionPictureSettingFromIndex(
                                          MapEntry<String, int>(
                                            key,
                                            element.value,
                                          ),
                                          element.key,
                                          false,
                                        ),
                                        onSaved: (key) => key != null
                                            ? cubit
                                                .setSectionPictureSettingFromIndex(
                                                MapEntry<String, int>(
                                                  key,
                                                  element.value,
                                                ),
                                                element.key,
                                                false,
                                              )
                                            : null,
                                        validator: (_) => sectionSettings
                                            .failure
                                            .localized(context),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: CustomTextFormField.required(
                                      label: 'Nombre de photos',
                                      initialValue: element.value.toString(),
                                      hintText: 'renseingez un nombre',
                                      onChanged: (value) => cubit
                                          .setSectionPictureSettingFromIndex(
                                        MapEntry<String, int>(
                                          element.key,
                                          int.parse(value),
                                        ),
                                        element.key,
                                        true,
                                      ),
                                      onSaved: (value) => value != null
                                          ? cubit
                                              .setSectionPictureSettingFromIndex(
                                              MapEntry<String, int>(
                                                element.key,
                                                int.parse(value),
                                              ),
                                              element.key,
                                              true,
                                            )
                                          : null,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      keyboardType: TextInputType.number,
                                      validator: (_) => sectionSettings.failure
                                          .localized(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      top: 12,
                                    ),
                                    child: IconButton(
                                      onPressed: index != 0
                                          ? () =>
                                              cubit.removeSectionPictureSetting(
                                                element.key,
                                              )
                                          : null,
                                      icon: Icon(
                                        index != 0
                                            ? Icons.delete
                                            : Icons.delete_forever,
                                        color: index != 0
                                            ? null
                                            : context
                                                .theme.colorScheme.onBackground
                                                .withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Center(
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: CustomButton.outlined(
                                    value: 'Ajouter une section photo',
                                    onPressed: cubit.addSectionPictureSetting,
                                    borderColor:
                                        context.theme.colorScheme.onBackground,
                                    textStyle:
                                        context.textTheme.text1670016letter1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'Paramétrages des intersections',
                              style: context.textTheme.titleLarge,
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                intersectionSettings.value!.entries.length,
                            itemBuilder: (context, index) {
                              final element = intersectionSettings
                                  .value!.entries
                                  .elementAt(index);
                              return Row(
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: CustomTextFormField.required(
                                        label: 'Titre de la section photo',
                                        initialValue: element.key,
                                        hintText: 'renseignez un nom',
                                        onChanged: (key) => cubit
                                            .setIntersectionPictureSettingFromIndex(
                                          MapEntry<String, int>(
                                            key,
                                            element.value,
                                          ),
                                          element.key,
                                          false,
                                        ),
                                        onSaved: (key) => key != null
                                            ? cubit
                                                .setIntersectionPictureSettingFromIndex(
                                                MapEntry<String, int>(
                                                  key,
                                                  element.value,
                                                ),
                                                element.key,
                                                false,
                                              )
                                            : null,
                                        validator: (_) => intersectionSettings
                                            .failure
                                            .localized(context),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: CustomTextFormField.required(
                                      label: 'Nombre de photos',
                                      initialValue: element.value.toString(),
                                      hintText: 'renseingez un nombre',
                                      onChanged: (value) => cubit
                                          .setIntersectionPictureSettingFromIndex(
                                        MapEntry<String, int>(
                                          element.key,
                                          int.parse(value),
                                        ),
                                        element.key,
                                        true,
                                      ),
                                      onSaved: (value) => value != null
                                          ? cubit
                                              .setIntersectionPictureSettingFromIndex(
                                              MapEntry<String, int>(
                                                element.key,
                                                int.parse(value),
                                              ),
                                              element.key,
                                              true,
                                            )
                                          : null,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      keyboardType: TextInputType.number,
                                      validator: (_) => intersectionSettings
                                          .failure
                                          .localized(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      top: 12,
                                    ),
                                    child: IconButton(
                                      onPressed: index != 0
                                          ? () => cubit
                                                  .removeIntersectionPictureSetting(
                                                element.key,
                                              )
                                          : null,
                                      icon: Icon(
                                        index != 0
                                            ? Icons.delete
                                            : Icons.delete_forever,
                                        color: index != 0
                                            ? null
                                            : context
                                                .theme.colorScheme.onBackground
                                                .withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Center(
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: CustomButton.outlined(
                                    value: 'Ajouter une section photo',
                                    onPressed:
                                        cubit.addIntersectionPictureSetting,
                                    borderColor:
                                        context.theme.colorScheme.onBackground,
                                    textStyle:
                                        context.textTheme.text1670016letter1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32),
                            child: CustomButton.filled(
                              disabledBackgroundColor:
                                  context.theme.colorScheme.onBackground,
                              value: 'Importer',
                              enabled: cubit.state.asLoaded!.canBeSubmitted,
                              onPressed: () async {
                                final result =
                                    await FilePicker.platform.pickFiles(
                                  allowMultiple: true,
                                  type: FileType.image,
                                );
                                if (result?.files != null) {
                                  final filesOk = cubit.setFiles(result!.files);
                                  if (filesOk) {
                                    await cubit.createProject().then(
                                      (value) {
                                        if (value) {
                                          ShowSnackBar.showSuccess(
                                            title: 'Création effectuée !',
                                          );
                                          context.goNamed(
                                            DashboardPage.routeName,
                                          );
                                        }
                                      },
                                    );
                                  }
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loadFailed: (state) =>
                    Center(child: ErrorLayout(state.failure)),
              );
            },
          ),
        ),
      ),
    );
  }
}
