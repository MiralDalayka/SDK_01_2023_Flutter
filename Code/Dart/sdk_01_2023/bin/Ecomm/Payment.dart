class Payment {
  String _cardType, _cardNo,_cardPass;

  Payment(this._cardType, this._cardNo,this._cardPass);

  get cardNo => _cardNo;

  String get cardType => _cardType;

  int cardValidation({String cp, String cn}) {
    if (cp != _cardPass) {
      return 0;
    } else if (cn != cardNo) {
      return 2;
    }
    return 1;
  }
}
