import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/cubit/home_cubit.dart';
import 'package:test_app/ui/home_page.dart';
///
class App extends StatelessWidget {
  ///
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeCubit>(
        create: (context) => HomeCubit(),
        child: const HomePage(),
      ),
    );
  }
}
