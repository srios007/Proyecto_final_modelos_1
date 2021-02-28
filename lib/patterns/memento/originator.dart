import '../patterns.dart';

class Originator {
  int counter;

  Originator(int counter) {
    this.counter = counter;
  }

  void setMemento(Memento m) {
    this.counter = m.counter;
  }

  Memento createMemento() {
    return new Memento(counter);
  }

  int getCounter() {
    return this.counter;
  }

  void setCounter(int counter) {
    this.counter = counter;
  }
}
