import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/themes/app_theme.dart';
import 'feature/explorer/bloc/explorer_cubit/explorer_cubit.dart';
import 'feature/explorer/presentation/page/explorer_page.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coco Mobile',
        theme: AppTheme.lightTheme(),
        home: BlocProvider(
          create: (context) => sl<ExplorerCubit>(),
          child: const ExplorerPage(),
        ));
  }
}
