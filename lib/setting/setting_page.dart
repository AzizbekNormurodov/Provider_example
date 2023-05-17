import 'package:flutter/material.dart';
import 'package:prowider_example/core/custom_bottom_sheet.dart';
import 'package:prowider_example/core/theme/theme_text_styles.dart';
import 'package:prowider_example/setting/widget/languages_widget.dart';
import 'package:prowider_example/setting/widget/subject_widget.dart';

import '../app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).translate('settings'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Material(
          elevation: 0,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Theme.of(context).cardColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                minLeadingWidth: 24,
                minVerticalPadding: 0,
                horizontalTitleGap: 12,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                onTap: () {
                  customModalBottomSheet(
                    context: context,
                    builder: (context, controller) => const LanguagesWidget(),
                  );
                },
                leading: Icon(
                  Icons.language,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('language'),
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              const Divider(),
              ListTile(
                minLeadingWidth: 24,
                minVerticalPadding: 0,
                horizontalTitleGap: 12,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                onTap: () {
                  customModalBottomSheet(
                    context: context,
                    builder: (context, controller) => SubjectWidget(),
                  );
                },
                leading: Icon(
                  Icons.language,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('Subject'),
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              const Divider(),
              ListTile(
                minLeadingWidth: 24,
                minVerticalPadding: 0,
                horizontalTitleGap: 12,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                leading: Icon(
                  Icons.phone,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('Call center'),
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              const Divider(),
              ListTile(
                minLeadingWidth: 24,
                minVerticalPadding: 0,
                horizontalTitleGap: 12,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('Exit'),
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
