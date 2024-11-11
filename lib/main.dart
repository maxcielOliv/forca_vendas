import 'package:flutter/material.dart';
import 'package:forca_vendas/src/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://edhnngaqdfprmjivvhew.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVkaG5uZ2FxZGZwcm1qaXZ2aGV3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzExMDU3MzQsImV4cCI6MjA0NjY4MTczNH0.5tv73rhiHw-BoSRz0yvBqMTaHBmeD09juzqV4-MPt7c');
  runApp(const App());
}
