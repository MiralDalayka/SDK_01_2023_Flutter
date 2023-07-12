class DailyModel {
  double? atomicMass;
  int? atomicNumber;
  double? ionizationEnergy;
  String? elementGroup;
  int? group;
  String? name;
  int? period;
  String? symbol;
  List<int>? electronsPerShell;
  int? discoveryDate;
  String? nameLatin;
  String? nameDE;

  DailyModel(
      {this.atomicMass,
      this.atomicNumber,
      this.ionizationEnergy,
      this.elementGroup,
      this.group,
      this.name,
      this.period,
      this.symbol,
      this.electronsPerShell,
      this.discoveryDate,
      this.nameLatin,
      this.nameDE});

  factory DailyModel.fromJson(Map<String, dynamic> json) {
    return DailyModel(
        atomicMass: json['atomicMass'],
        atomicNumber: json['atomicNumber'],
        ionizationEnergy: json['ionizationEnergy'],
        elementGroup: json['elementGroup'],
        group: json['group'],
        name: json['name'],
        period: json['period'],
        symbol: json['symbol'],
        electronsPerShell: json['electronsPerShell'].cast<int>(),
        discoveryDate: json['discoveryDate'],
        nameLatin: json['nameLatin'],
        nameDE: json['nameDE']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['atomicMass'] = this.atomicMass;
    data['atomicNumber'] = this.atomicNumber;
    data['ionizationEnergy'] = this.ionizationEnergy;
    data['elementGroup'] = this.elementGroup;
    data['group'] = this.group;
    data['name'] = this.name;
    data['period'] = this.period;
    data['symbol'] = this.symbol;
    data['electronsPerShell'] = this.electronsPerShell;
    data['discoveryDate'] = this.discoveryDate;
    data['nameLatin'] = this.nameLatin;
    data['nameDE'] = this.nameDE;
    return data;
  }
}


