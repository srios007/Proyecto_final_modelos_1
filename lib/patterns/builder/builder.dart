import '../patterns.dart';

class Builder{
  void createScene(int type){
    Client client = Client();
    client.createScene(type);
  }
}