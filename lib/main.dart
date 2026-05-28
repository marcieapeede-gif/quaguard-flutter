import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'providers/app_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AquaGuardApp());
}

class AquaGuardApp extends StatelessWidget {
  const AquaGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AquaGuard',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          primarySwatch: Colors.teal,
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
