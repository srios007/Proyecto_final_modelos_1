import '../../patterns.dart';

abstract class SceneWithDecisionAndTittle implements BuilderSceneBase{
  @override
  bool addDecision(bool decision) {
    // TODO: implement addDecision
    scene.decision = decision;
    return decision;
  }

  String addTittle(String tittle) {
    // TODO: implement addDecision
    scene.tittle = tittle;
    return tittle;
  }
}