import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  final ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    // Puedes inicializar _locale aquí si es necesario.
    // _locale = Locale('en', '');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrackerApp',
      locale: _locale,
      supportedLocales: const [
        Locale('en', ''),
        // Agrega otros idiomas si es necesario.
        // Locale('es', ''),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF5428F1),
      ),
      themeMode: _themeMode,
      // Define aquí tu enrutador si lo necesitas.
      // routerDelegate: _routerDelegate,
      // routeInformationParser: _routeInformationParser,
    );
  }
}
