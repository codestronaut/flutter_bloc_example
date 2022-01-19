import 'package:bloc_state_management_example/bloc/counter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterBloc counterBloc;

  setUp(() {
    counterBloc = CounterBloc();
  });

  test('initial state should be 0', () {
    expect(counterBloc.state, CounterState(0));
  });

  blocTest<CounterBloc, CounterState>(
    'should emit CounterState(1) when increment event is added',
    build: () => counterBloc,
    act: (bloc) => bloc.add(Increment()),
    expect: () => [
      CounterState(1),
    ],
  );

  blocTest<CounterBloc, CounterState>(
    'should emit CounterState(-1) when decrement event is added',
    build: () => counterBloc,
    act: (bloc) => bloc.add(Decrement()),
    expect: () => [
      CounterState(-1),
    ],
  );
}
