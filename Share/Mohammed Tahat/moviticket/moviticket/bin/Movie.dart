class Movie {
  String _movieName;
  String _movieShow;
  String _venue;
    Movie(){



  List<Map<String,dynamic>> _movieName = [
    {"name":"K","Show":2,"veune":"طابق الاول"},
    {"name":"M","Show":5,"veune":"طابق الثاني"},
    {"name":"F","Show":18,"veune":"طابق الثالث"},
  ];
  for(int index = 0; index < _movieName.length; index++){
  print("${index + 1}- name : ${_movieName[index]['name']} - Show : ${_movieName[index]['Show']}");
  }
}





  void updateDetails() {

  }
}