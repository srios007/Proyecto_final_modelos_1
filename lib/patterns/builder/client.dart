import '../patterns.dart';

class Client {
  BuilderSceneBase builderScene;
  void createScene(int type) {
    switch (type) {
      case 1:
        {
          builderScene = new SceneWithTittle();
        }
        break;

      case 2:
        {
          builderScene = new SceneWithDecision();
        }
        break;
      case 3:
        {
          builderScene = new SceneWithDecisionAndTittle();
        }
        break;
    }
  }

  BuilderSceneBase getScene() {
    return builderScene;
  }
}
