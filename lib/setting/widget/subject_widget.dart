import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prowider_example/app_localizations.dart';
import 'package:prowider_example/core/theme/theme_text_styles.dart';

import '../../app_provider.dart';

class SubjectWidget extends StatelessWidget {
  const SubjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerSubject = Provider.of<AppProvider>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            AppLocalizations.of(context).translate("Subject"),
            style: ThemeTextStyles.appTitle,
          ),
        ),
        SubjectItemWidget(
          isChecked: providerSubject.themeMode == ThemeMode.system,
          text: "System",
          onTap: () {
            context.read<AppProvider>().setTheme(ThemeMode.system);
          },
        ),
        const Divider(),
        SubjectItemWidget(
          isChecked: providerSubject.themeMode == ThemeMode.light,
          text: "Light",
          onTap: () {
            context.read<AppProvider>().setTheme(ThemeMode.light);
          },
        ),
        const Divider(),
        SubjectItemWidget(
          isChecked: providerSubject.themeMode == ThemeMode.dark,
          text: "Dark",
          onTap: () {
            context.read<AppProvider>().setTheme(ThemeMode.dark);
          },
        ),
      ],
    );
  }
}

class SubjectItemWidget extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final bool isChecked;

  const SubjectItemWidget({
    Key? key,
    required this.text,
    this.onTap,
    this.isChecked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 24,
      minVerticalPadding: 0,
      horizontalTitleGap: 12,
      onTap: onTap,
      title: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          text,
        ),
      ),
      trailing: Visibility(
        visible: isChecked,
        child: Image.asset(
          "assets/png/check.png",
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
