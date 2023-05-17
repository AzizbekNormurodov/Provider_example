import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prowider_example/core/theme/app_theme.dart';
import 'package:prowider_example/profile/profile_page.dart';
import 'app_localizations.dart';
import 'app_provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale(context.watch<AppProvider>().getLocale),
      themeMode: context.watch<AppProvider>().themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: ProfilePage(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
