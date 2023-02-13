import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/cubit/base_state.dart';
import 'package:test_app/cubit/home_cubit.dart';
///
class HomePage extends StatefulWidget {
  ///
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, BaseState>(builder: (context, state) {
      if (state is SuccessState) {
        return _buildLayout(points: state.points, bg: state.randColor);
      }

      return _buildLayout(points: 0, bg: Colors.white, color: Colors.black);
    },);
  }

  Widget _buildLayout({required int points, required Color bg, Color? color}) {
    const double _fontSize = 25.0;

    return GestureDetector(
      onTap: () => context.read<HomeCubit>().reloadColor(),
      child: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          title: Text('You have ${points.toString()} points'),
        ),
        body: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
                color: color ?? Colors.white,
                fontSize: _fontSize,
                fontWeight: FontWeight.w600,),
          ),
        ),
      ),
    );
  }
}
