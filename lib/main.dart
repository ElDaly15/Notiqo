import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/const.dart';
import 'package:notiqo/featuers/add_note/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:notiqo/featuers/main/presentation/manager/get_notes_cubit/get_notes_cubit.dart';
import 'package:notiqo/featuers/splash/presentation/views/splash_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(Const.boxOfNotesName);
  if (kReleaseMode) {
    runApp(const NotiqoApp());
  } else {
    runApp(
        DevicePreview(enabled: true, builder: (context) => const NotiqoApp()));
  }
}

class NotiqoApp extends StatelessWidget {
  const NotiqoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetNotesCubit()..FetchNotes(),
        ),
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
