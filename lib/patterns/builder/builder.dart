import '../patterns.dart';

class SceneBuilder{
  BuilderSceneBase createScene(int type){
    Client client = Client();
    client.createScene(type);
    return client.getScene();
  }
}