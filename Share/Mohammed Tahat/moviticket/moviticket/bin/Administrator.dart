class Administrator {
  int _id;
  String _name;
  String _password;

  Administrator(this._id, this._name, this._password);

  set name(String name) {
    _name = name;
  }

  set password(String password) {
    _password = password;
  }




  String get name => _name;
  String get password => _password;


  void addMovieRecords() {
    // implementation
  }

  void updateMovieRecord() {
    // implementation
  }

  void deleteMovieRecord() {
    // implementation
  }
}