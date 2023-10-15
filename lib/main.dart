import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';

import 'views/NotesView.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      systemNavigationBarColor:
          Colors.black, // Set the color of the system navigation bar
      systemNavigationBarIconBrightness:
          Brightness.light, // Set the color of navigation bar icons
    ));
    return BlocProvider(
      create: (BuildContext context) => AddNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              systemStatusBarContrastEnforced: true,
              // statusBarColor: Colors.transparent,
              // systemNavigationBarColor: Colors.black,
              systemNavigationBarColor: Colors.transparent,
              systemNavigationBarContrastEnforced: true,
              systemNavigationBarIconBrightness: Brightness.light,
            ),
          ),
          brightness: Brightness.dark,
        ),
        home: const NotesView(),
      ),
    );
  }
}
