class SceneIndicator {
  int counter;
  SceneIndicator(this.counter);

  SceneIndicator.initial() {
    counter = 0;
  }

  SceneIndicator.copy(SceneIndicator sceneIndicator)
      : this(sceneIndicator.counter);
}
