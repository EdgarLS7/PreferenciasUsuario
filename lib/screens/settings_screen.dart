import 'package:flutter/material.dart';
import 'package:preferencias_usuario/providers/theme_provider.dart';
import 'package:preferencias_usuario/share_preferencias/preferencias.dart';
import 'package:preferencias_usuario/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {

  static const String routerName = '/Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  // bool isDarkmode = false;
  // int gender = 1;
  // String name = 'Edgar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Settings Screen'),
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text('Ajustes', 
              style: TextStyle( 
                fontSize: 45, 
                fontWeight: FontWeight.w400),),
              const Divider(),

              SwitchListTile.adaptive(
                value: Preferencias.isDarkmode, 
                title: const Text('DarkMode'),
                onChanged: ( value ) {
                  Preferencias.isDarkmode = value;
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                  value 
                    ? themeProvider.setDarkMode() 
                    : themeProvider.setLightMode();

                  setState(() {});
                }
              ),
              const Divider(),

              RadioListTile<int>(
                value: 1, 
                groupValue: Preferencias.gender, 
                title: const Text('Masculino'),
                onChanged: ( value ) {
                  Preferencias.gender = value ?? 1;
                  setState(() {});
                }
              
              ),

               RadioListTile<int>(
                value: 2, 
                groupValue: Preferencias.gender, 
                title: const Text('Femenino'),
                onChanged: ( value ) {
                  Preferencias.gender = value ?? 2;
                  setState(() {});
                }
              ),
              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20),
                child: TextFormField(
                  initialValue: Preferencias.name,
                  onChanged: ( value ) {
                    Preferencias.name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario'
                  ),
                ),
              )
            ]
          ),
        ),
      )
    );
  }
}