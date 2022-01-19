import 'package:bloc_state_management_example/cubit/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterCubit counterCubit;

  setUp(() {
    counterCubit = CounterCubit();
  });

  test('initial state should be 0', () {
    expect(counterCubit.state, CounterState(0));
  });

  blocTest<CounterCubit, CounterState>(
    'should emit CounterState(1) when increment event is added',
    build: () => counterCubit,
    act: (cubit) => cubit.increment(),
    expect: () => [
      CounterState(1),
    ],
  );

  blocTest<CounterCubit, CounterState>(
    'should emit CounterState(-1) when decrement event is added',
    build: () => counterCubit,
    act: (cubit) => cubit.decrement(),
    expect: () => [
      CounterState(-1),
    ],
  );
}
