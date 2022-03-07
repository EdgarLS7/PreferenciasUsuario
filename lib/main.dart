import 'package:flutter/material.dart';
import 'package:preferencias_usuario/screens/screens.dart';
import 'package:preferencias_usuario/share_preferencias/preferencias.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

   await Preferencias.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName    : ( _ ) => const HomeScreen(),
        SettingsScreen.routerName: ( _ ) => const SettingsScreen(),
      }, 
      theme: Preferencias.isDarkmode ? ThemeData.dark() : ThemeData.light()
    );
  }
}