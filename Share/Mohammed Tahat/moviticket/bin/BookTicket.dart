class BookTicket {
  int _noOfTicketAvailable;
  String _movieName;
  int _showNo;
  String _date;
  String _time;
  String _venue;

  BookTicket(this._noOfTicketAvailable, this._movieName, this._showNo, this._date, this._time, this._venue);

  set noOfTicketAvailable(int noOfTicketAvailable) {
    _noOfTicketAvailable = noOfTicketAvailable;
  }
  set movieName(String movieName) {
    _movieName = movieName;
  }
  set showNo(int showNo) {
    _showNo = showNo;
  }
  set date(String date) {
    _date = date;
  }

  set time(String time) {
    _time = time;
  }
  set venue(String venue) {
    _venue = venue;
  }


  int get noOfTicketAvailable => _noOfTicketAvailable;
  String get movieName => _movieName;
  int get showNo => _showNo;
  String get date => _date;
  String get date => _date;
  String get time => _time;
  String get venue => _venue;


  void updateSeatsAvailable() {
  }
}