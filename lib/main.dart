import 'dart:io';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'src/app.dart';
import 'src/data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final isarDir = Directory(join(dir.path, 'isar_crash_test'));
  if (!await isarDir.exists()) await isarDir.create();
  await Isar.open([DataSchema], inspector: true, directory: isarDir.path);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
