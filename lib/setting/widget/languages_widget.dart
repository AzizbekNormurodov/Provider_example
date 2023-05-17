import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:prowider_example/app_localizations.dart';
import 'package:prowider_example/app_provider.dart';
import 'package:prowider_example/core/theme/theme_text_styles.dart';

class LanguagesWidget extends StatelessWidget {
  const LanguagesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerLanguage = Provider.of<AppProvider>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            textAlign: TextAlign.start,
            AppLocalizations.of(context).translate("Select language"),
            style: ThemeTextStyles.appTitle,
          ),
        ),
        LanguageItemWidget(
          isChecked: providerLanguage.getLocale == 'ru',
          text: AppLocalizations.of(context).translate("Russian"),
          flagName: 'ru',
          onTap: () {
            context.read<AppProvider>().setLocale("ru");
          },
        ),
        const Divider(),
        LanguageItemWidget(
          isChecked: providerLanguage.getLocale == 'en',
          text: AppLocalizations.of(context).translate("English"),
          flagName: 'en',
          onTap: () {
            context.read<AppProvider>().setLocale("en");
          },
        ),
        const Divider(),
        LanguageItemWidget(
          isChecked: providerLanguage.getLocale == 'uz',
          text: AppLocalizations.of(context).translate("Uzbek"),
          flagName: 'uz',
          onTap: () {
            context.read<AppProvider>().setLocale("uz");
          },
        ),
      ],
    );
  }
}

class LanguageItemWidget extends StatelessWidget {
  final String? flagName;
  final String text;
  final Function()? onTap;
  final bool isChecked;

  const LanguageItemWidget({
    Key? key,
    required this.text,
    this.onTap,
    this.isChecked = false,
    this.flagName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 24,
      minVerticalPadding: 0,
      horizontalTitleGap: 12,
      contentPadding: EdgeInsets.symmetric(horizontal: 12),
      onTap: onTap,
      leading: SvgPicture.asset("assets/png/$flagName.svg"),
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
