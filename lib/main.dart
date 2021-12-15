import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization62/page/hom_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales:  [Locale('en', 'US'), Locale('fr', 'FR'), Locale('ru', 'RU'), Locale('uz', 'UZ')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale:  Locale('en', 'US'),
        child:  MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomPage(),
    );
  }
}

