import 'package:flutter/material.dart';

void main() {
  runApp(const MediSyncroApp());
}

class MediSyncroApp extends StatelessWidget {
  const MediSyncroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediSyncro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF185FA5),
        ),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'MediSyncro',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF185FA5),
            ),
          ),
        ),
      ),
    );
  }
}