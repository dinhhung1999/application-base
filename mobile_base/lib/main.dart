import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_base/di/initialize_dependencies.dart';

import 'application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(MultiBlocProvider(
    providers: [
    ],
    child: const Application(),
  ));
}