import 'package:flutter/material.dart';
import 'package:prowider_example/app_localizations.dart';
import 'package:prowider_example/setting/setting_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffF9F9F9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 76, left: 130),
            child: Image.asset("assets/png/0.png"),
          ),
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
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Theme.of(context).cardColor,
              child: Column(
                children: [
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    leading: Image.asset("assets/png/1.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate('Personal data'),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  Divider(
                  ),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    leading: Image.asset("assets/png/2.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate('My results'),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  Divider(
                  ),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    leading: Image.asset("assets/png/3.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate("Recipe"),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  Divider(
                  ),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    leading: Image.asset("assets/png/4.png",
                        color: Theme.of(context).iconTheme.color),
                    title: Text(
                      AppLocalizations.of(context).translate("Wallet"),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  Divider(
                  ),
                  ListTile(
                    minLeadingWidth: 24,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 12,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
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
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
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
