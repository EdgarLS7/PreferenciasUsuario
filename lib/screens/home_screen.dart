
import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routerName = '/Home';
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen')
      ),
      drawer: const MenuLateral(),
      body: const Center(
         child: Text('HomeScreen'),
      ),
    );
  }
}