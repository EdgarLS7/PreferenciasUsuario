import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {

  static const String routerName = '/Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Setting Screen'),
      ),
      drawer: const MenuLateral(),
      body: const Center(
         child: Text('SettingsScreen'),
      ),
    );
  }
}