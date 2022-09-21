abstract class CounterState {
  int? counter;
}
class CounterValueState extends CounterState {
  final int counter;

  CounterValueState(this.counter);

}