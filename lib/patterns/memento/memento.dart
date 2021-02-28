import '../patterns.dart';

class Memento extends IMemento {
  SceneIndicator _state;

  Memento(SceneIndicator sceneIndicator) {
    _state = SceneIndicator.copy(sceneIndicator);
  }

  @override
  SceneIndicator getState() {
    return _state;
  }
}
