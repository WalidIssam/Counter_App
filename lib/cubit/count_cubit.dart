import 'package:flutter_bloc/flutter_bloc.dart';

import 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountAincrementState());

  int countA = 0;
  int countB = 0;

  increment({required int count, required String team}) {
    if (team == 'A') {
      countA += count;
      emit(CountAincrementState());
    } else {
      countB += count;
      emit(CountBincrementState());
    }
  }

  restCount() {
    countA = 0;
    countB = 0;
    emit(ResetCount());
  }
}
