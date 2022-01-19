part of 'counter_cubit.dart';

// ignore: must_be_immutable
class CounterState extends Equatable {
  int value = 0;

  CounterState(this.value);

  @override
  List<Object?> get props => [value];
}
