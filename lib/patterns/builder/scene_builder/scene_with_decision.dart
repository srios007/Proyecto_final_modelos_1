import '../../patterns.dart';

 class SceneWithDecision extends BuilderSceneBase{
  @override
  bool addDecision(bool decision) {
    // TODO: implement addDecision
    scene.decision = decision;
    return decision;
  }

  String addTittle(String tittle) {
    // TODO: implement addTittle
    scene.tittle = tittle;
    return tittle;
  }
}