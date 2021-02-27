import '../../patterns.dart';

abstract class SceneWithDecision implements BuilderSceneBase{
  @override
  bool addDecision(bool decision) {
    // TODO: implement addDecision
    scene.decision = decision;
    return decision;
  }
}