import '../patterns.dart';

class Client {
  void createScene(int type) {
    BuilderSceneBase builderScene;
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
}
