import 'package:flutter/material.dart';
import 'package:prowider_example/app_localizations.dart';
import 'package:prowider_example/personal_data/personal_data_page.dart';
import 'package:prowider_example/setting/setting_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 76),
            child: Image.asset("assets/png/0.png"),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 110),
            child: Text(
              "Зокиров Камолиддин",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: Theme.of(context).cardColor,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalDataPage(),
                        ),
                      );
                    },
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    leading: Image.asset("assets/png/1.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate('Personal data'),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  const Divider(),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    leading: Image.asset("assets/png/2.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate('My results'),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  const Divider(),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    leading: Image.asset("assets/png/3.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate("Recipe"),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  const Divider(),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    leading: Image.asset("assets/png/4.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate("Wallet"),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  const Divider(),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()),
                      );
                    },
                    leading: Image.asset("assets/png/5.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate("settings"),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
