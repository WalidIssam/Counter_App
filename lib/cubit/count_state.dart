import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CountState {}

class CountAincrementState extends CountState {}

class CountBincrementState extends CountState {}

class ResetCount extends CountState {}
