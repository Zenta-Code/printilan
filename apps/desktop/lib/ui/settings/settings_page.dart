import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_admin/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_admin/utils/utils.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MainBoxMixin {
  late final ActiveTheme _selectedTheme = sl<SettingsCubit>().getActiveTheme();

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
      header: const PageHeader(
        title: Text('Settings'),
      ),
      children: [
        const Card(
          child: Text('Settings Page'),
        ),
        const Card(
          child: Text('Settings Page'),
        ),
        const Card(
          child: Text('Settings Page'),
        ),
        const Card(
          child: Text('Settings Page'),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return const Card(
              child: Text('Settings Page'),
            );
          },
        ),
      ],
    );
  }

  String _getThemeName(ActiveTheme activeTheme, BuildContext context) {
    if (activeTheme == ActiveTheme.system) {
      return Strings.of(context)!.themeSystem;
    } else if (activeTheme == ActiveTheme.dark) {
      return Strings.of(context)!.themeDark;
    } else {
      return Strings.of(context)!.themeLight;
    }
  }
}
