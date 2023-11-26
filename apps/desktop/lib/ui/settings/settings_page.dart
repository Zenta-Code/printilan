import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_admin/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MainBoxMixin {
  late final ActiveTheme _selectedTheme = sl<SettingsCubit>().getActiveTheme();
  late final SettingsCubit _settingsCubit = context.read<SettingsCubit>();
  late final List<DataHelper> _listLanguage = [
    DataHelper(title: Constants.get.english, type: "en"),
    DataHelper(title: Constants.get.bahasa, type: "id"),
  ];
  late final DataHelper _selectedLanguage =
      (getData(MainBoxKeys.locale) ?? "en") == "en"
          ? _listLanguage[0]
          : _listLanguage[1];

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeBloc>();
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: Text(Strings.of(context)!.settings),
      ),
      children: [
        FilledButton(
            child: Text('get store'),
            onPressed: () async {
              await _settingsCubit.init();
            })
      ],
    );
  }

  String _getThemeName(ActiveTheme activeTheme, BuildContext context) {
    if (activeTheme == ActiveTheme.system) {
      return Strings.of(context)!.theme_system;
    } else if (activeTheme == ActiveTheme.dark) {
      return Strings.of(context)!.theme_dark;
    } else {
      return Strings.of(context)!.theme_light;
    }
  }
}
