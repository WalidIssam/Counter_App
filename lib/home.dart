import 'package:counter_app/cubit/count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/compo.dart';
import 'components/custom_txt.dart';
import 'cubit/count_cubit.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Function({required int count, required String team}) fun =
        BlocProvider.of<CountCubit>(context).increment;
    return BlocConsumer<CountCubit, CountState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter App'),
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Compo(
                      textTitle: 'Team A',
                      textNum: '${BlocProvider.of<CountCubit>(context).countA}',
                      textButOne: 'Add one point',
                      textButTow: 'Add Tow Point',
                      textButThree: 'Add Three Point',
                      funOne: () {
                        fun(count: 1, team: "A");
                      },
                      funTow: () {
                        fun(count: 2, team: "A");
                      },
                      funThree: () {
                        fun(count: 3, team: "A");
                      },
                    ),
                    VerticalDivider(
                      indent: 300,
                      endIndent: 250,
                      thickness: 6,
                      color: Colors.black,
                      width: 5,
                    ),
                    Compo(
                      textTitle: 'Team B',
                      textNum: '${BlocProvider.of<CountCubit>(context).countB}',
                      textButOne: 'Add one point',
                      textButTow: 'Add Tow Point',
                      textButThree: 'Add Three Point',
                      funOne: () {
                        fun(count: 1, team: "B");
                      },
                      funTow: () {
                        fun(count: 2, team: "B");
                      },
                      funThree: () {
                        fun(count: 3, team: "B");
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(120, 60)),
                  onPressed: () {
                    BlocProvider.of<CountCubit>(context).restCount();
                  },
                  child: CustomText(
                    text: 'Rest',
                    size: 24,
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
