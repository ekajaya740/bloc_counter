import 'package:bloc_increment_app/counter/counter_cubit.dart';
import 'package:bloc_increment_app/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPresentation extends StatefulWidget {
  const CounterPresentation({Key? key}) : super(key: key);

  @override
  State<CounterPresentation> createState() => _CounterPresentationState();
}

class _CounterPresentationState extends State<CounterPresentation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Title"),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) => Text(state.counter.toString()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => context.read<CounterCubit>().increment(),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 28,
                ),
                FloatingActionButton(
                  onPressed: () => context.read<CounterCubit>().decrement(),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
