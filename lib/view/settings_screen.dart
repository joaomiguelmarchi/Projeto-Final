import 'package:flutter/material.dart';
import 'package:projeto_final/controller/locale_provider.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    final provider = Provider.of<LocaleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.settings_screen_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (state.theme)
                ? SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          bool theme;
                          if (state.theme == true) {
                            theme = false;
                          } else {
                            theme = true;
                          }
                          state.setTheme(theme);
                          state.changeTheme();
                        },
                        child: Column(children: [
                          Text(
                            AppLocalizations.of(context)!.settings_screen_btn1,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.light_mode,
                              size: 42,
                            ),
                          ),
                        ])),
                  )
                : SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          bool theme;
                          if (state.theme == true) {
                            theme = false;
                          } else {
                            theme = true;
                          }

                          state.setTheme(theme);
                          state.changeTheme();
                        },
                        child: Column(children: [
                          Text(
                            AppLocalizations.of(context)!.settings_screen_btn1,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Icon(
                            Icons.dark_mode,
                            size: 42,
                          ),
                        ])),
                  ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 80,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    provider.changeLocale();
                  },
                  child: Center(
                      child: Text(
                    AppLocalizations.of(context)!.settings_screen_btn2,
                    style: const TextStyle(fontSize: 18),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
