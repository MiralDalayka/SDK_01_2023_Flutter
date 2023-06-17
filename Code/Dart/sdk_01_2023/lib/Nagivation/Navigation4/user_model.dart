class User{
  String _email,_name;

  User(this._email, this._name);

  get name => _name;

  set name(value) {
    _name = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }
}