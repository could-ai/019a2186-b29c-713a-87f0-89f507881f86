import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'screens/song_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RajasthaniSongApp());
}

class RajasthaniSongApp extends StatelessWidget {
  const RajasthaniSongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'राजस्थानी गाने',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('hi'), // Hindi
      ],
      locale: const Locale('hi'), // Default to Hindi
      theme: ThemeData(
        // Rajasthan-inspired color scheme
        colorScheme: const ColorScheme(
          primary: Color(0xFF8B4513), // Saddle brown - traditional Rajasthani color
          primaryContainer: Color(0xFFDEB887), // Burlywood
          secondary: Color(0xFFDC143C), // Crimson red - vibrant Rajasthani accent
          secondaryContainer: Color(0xFFFFB6C1), // Light pink
          surface: Colors.white,
          background: Color(0xFFE8F4FD), // Light blue - sky/desert sky
          error: Color(0xFFD32F2F),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color(0xFF424242),
          onBackground: Color(0xFF424242),
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        // Custom text theme with appropriate font sizes
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF8B4513),
          ),
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xFF8B4513),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color(0xFF424242),
          ),
        ),
        // Elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFDC143C),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        // Card theme
        cardTheme: CardTheme(
          color: Colors.white,
          shadowColor: Colors.black.withOpacity(0.1),
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
        ),
        // App bar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8B4513),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const SongListScreen(),
    );
  }
}