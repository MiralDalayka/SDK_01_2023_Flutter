class _PrivateClass{
  int _id;
  String name;

  _PrivateClass();

  void printFunction(){

  }

  void _printFunction(){

  }
}

void main(){
  _PrivateClass p = _PrivateClass();
  p.name;
}