import 'package:flutter/material.dart';
import 'package:forecast/configs/di/di.dart';
import 'package:forecast/routers/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI().setUpLocator();

  runApp(
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => DI().get<ThemeBloc>(),
    //     ),
    //     BlocProvider(
    //       create: (context) => DI().get<LanguageBloc>(),
    //     ),
    //   ],
    //   child:
    const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true),
      routerConfig: AppRouter.routers,
    );
  }
}
