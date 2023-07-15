class Co2Model {
  List<Co2>? co2;

  Co2Model({this.co2});

  Co2Model.fromJson(Map<String, dynamic> json) {
    if (json['co2'] != null) {
      co2 = <Co2>[];
      json['co2'].forEach((v) {
        co2!.add(Co2.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.co2 != null) {
      data['co2'] = this.co2!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Co2 {
  String? year;
  String? month;
  String? day;
  String? cycle;
  String? trend;

  Co2({this.year, this.month, this.day, this.cycle, this.trend});

  factory Co2.fromJson(Map<String, dynamic> json) {
    return Co2(
        year: json['year'],
        month: json['month'],
        day: json['day'],
        cycle: json['cycle'],
        trend: json['trend']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['month'] = this.month;
    data['day'] = this.day;
    data['cycle'] = this.cycle;
    data['trend'] = this.trend;
    return data;
  }
}
