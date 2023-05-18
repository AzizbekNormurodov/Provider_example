import 'package:flutter/material.dart';
import 'package:prowider_example/app_localizations.dart';
import 'package:prowider_example/core/theme/theme_colors.dart';
import 'package:prowider_example/core/theme/theme_text_styles.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate("Personal data"),),
      ),
      body: SingleChildScrollView( scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/png/0.png"),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Material( borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Theme.of(context).cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("Client ID"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                            hintText: '125465125',
                            fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("first_name"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: 'Kamoliddin',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("last_name"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: 'Zokirov',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("birth_date"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: '12.08.01',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("phone_number"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: '+998935649229',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("Additional phone number"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: '+998901230491',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("Document Type"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: 'Пасспорт',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("Series and passport number"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: 'AD763873422',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("Date of issue"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: '12.08.01',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Text(AppLocalizations.of(context).translate("Issuing authority"), style: ThemeTextStyles.text2,),
                      ),
                      TextFormField(
                        style: ThemeTextStyles.inputname,
                        decoration:  InputDecoration(
                          hintText: 'Мирзо Улугбек IIB',
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
