import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/theme/theme.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/domain/usecase/files_usecase.dart';
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
    final l10n = context.l10n;
    return MainScaffold(
      menuSelectedIndex: 1,
      appBar: MainAppBar(
        title: l10n.createProject_appbarTitle,
      ),
      body: BlocProvider(
        create: (context) => ProjectCreateCubit(
          projectUsecase: getIt<ProjectUsecase>(),
          filesUsecase: getIt<FilesUsecase>(),
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
                  return const _CreationForm();
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

class _CreationForm extends StatelessWidget {
  const _CreationForm();
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _FormTitle(),
            _ProjectNameField(),
            Divider(
              thickness: 2,
            ),
            _PictureSectionSettings(),
            Divider(
              thickness: 2,
            ),
            _PictureSectionSettings(
              isSection: false,
            ),
            _CreateButton(),
          ],
        ),
      ),
    );
  }
}

class _FormTitle extends StatelessWidget {
  const _FormTitle();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        l10n.createProject_globalParameters,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}

class _ProjectNameField extends StatelessWidget {
  const _ProjectNameField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final setProjectName = context.read<ProjectCreateCubit>().setProjectName;
    final projectName = context.select<ProjectCreateCubit, StringInput>(
      (cubit) => cubit.state.asLoaded!.data.projectName,
    );
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
      ),
      child: CustomTextFormField.required(
        label: l10n.createProject_projectNameLabel,
        initialValue: projectName.value,
        hintText: l10n.createProject_projectNameHint,
        onChanged: setProjectName,
        onSaved: setProjectName,
        validator: (_) => projectName.failure.localized(context),
      ),
    );
  }
}

class _PictureSectionSettings extends StatelessWidget {
  const _PictureSectionSettings({
    this.isSection = true,
  });
  final bool isSection;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final settings = context.select<ProjectCreateCubit, MapIntInput>(
      (cubit) => isSection
          ? cubit.state.asLoaded!.data.sectionPictureSetting
          : cubit.state.asLoaded!.data.intersectionPictureSetting,
    );
    final setSettings = isSection
        ? context.read<ProjectCreateCubit>().setSectionPictureSettingFromIndex
        : context
            .read<ProjectCreateCubit>()
            .setIntersectionPictureSettingFromIndex;
    final removeSetting = isSection
        ? context.read<ProjectCreateCubit>().removeSectionPictureSetting
        : context.read<ProjectCreateCubit>().removeIntersectionPictureSetting;
    final addSetting = isSection
        ? context.read<ProjectCreateCubit>().addSectionPictureSetting
        : context.read<ProjectCreateCubit>().addIntersectionPictureSetting;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            isSection
                ? l10n.createProject_pictureSectionSettingsTitle
                : l10n.createProject_pictureIntersectionSettingsTitle,
            style: context.textTheme.titleLarge,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: settings.value!.entries.length,
          itemBuilder: (context, index) {
            final element = settings.value!.entries.elementAt(index);
            return Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: CustomTextFormField.required(
                      label: l10n.createProject_pictureSectionLabel,
                      initialValue: element.key,
                      hintText: l10n.createProject_pictureSectionHint,
                      onChanged: (key) => setSettings(
                        MapEntry<String, int>(
                          key,
                          element.value,
                        ),
                        element.key,
                        false,
                      ),
                      onSaved: (key) => key == null
                          ? null
                          : setSettings(
                              MapEntry<String, int>(
                                key,
                                element.value,
                              ),
                              element.key,
                              false,
                            ),
                      validator: (_) => settings.failure.localized(context),
                    ),
                  ),
                ),
                Flexible(
                  child: CustomTextFormField.required(
                    label: l10n.createProject_PictureNumberlabel,
                    initialValue: element.value.toString(),
                    hintText: l10n.createProject_pictureNumberHint,
                    onChanged: (value) => setSettings(
                      MapEntry<String, int>(
                        element.key,
                        int.parse(value),
                      ),
                      element.key,
                      true,
                    ),
                    onSaved: (value) => value == null
                        ? null
                        : setSettings(
                            MapEntry<String, int>(
                              element.key,
                              int.parse(value),
                            ),
                            element.key,
                            true,
                          ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    validator: (_) => settings.failure.localized(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 12,
                  ),
                  child: IconButton(
                    onPressed: index != 0
                        ? () => removeSetting(
                              element.key,
                            )
                        : null,
                    icon: Icon(
                      index != 0 ? Icons.delete : Icons.delete_forever,
                      color: index != 0
                          ? null
                          : context.theme.colorScheme.onBackground
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
                  value: l10n.createProject_AddPictureSection,
                  onPressed: addSetting,
                  borderColor: context.theme.colorScheme.onBackground,
                  textStyle: context.textTheme.text1670016letter1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton();
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.watch<ProjectCreateCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: CustomButton.filled(
        disabledBackgroundColor: context.theme.colorScheme.onBackground,
        value: l10n.createProject_ImportButton,
        enabled: cubit.state.asLoaded!.canBeSubmitted,
        onPressed: () async {
          final result = await FilePicker.platform.pickFiles(
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
                      title: l10n.createProject_DoneSnackbarTitle,
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
    );
  }
}
