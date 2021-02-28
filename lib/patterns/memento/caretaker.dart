import '../patterns.dart';

class Caretaker {
  Memento memento;

  void setMemento(Memento memento) {
    this.memento = memento;
  }

  Memento getMemento() {
    return this.memento;
  }
}
