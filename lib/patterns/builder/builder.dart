import '../patterns.dart';

class SceneBuilder{
  void createScene(int type){
    Client client = Client();
    client.createScene(type);
  }
}