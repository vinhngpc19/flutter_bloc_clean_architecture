import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast/configs/di/di.dart';
import 'package:forecast/presentation/screens/mock/bloc/mock_bloc.dart';
import 'package:forecast/presentation/screens/mock/mock_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI().setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider<MockBloc>(
              create: (BuildContext context) => DI().getIt<MockBloc>(),
            ),
          ],
          child: const MockScreen(),
        ));
  }
}
