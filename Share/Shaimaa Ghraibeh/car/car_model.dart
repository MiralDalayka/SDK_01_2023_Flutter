class Car_Model {
  String? carMake;
  String? carModel;
  int? carModelYear;
  String? carVin;
  String? carColor;

  Car_Model(
      {this.carMake,
        this.carModel,
        this.carModelYear,
        this.carVin,
        this.carColor});

  factory Car_Model.fromJson(Map<String, dynamic> json) {
   return Car_Model(
     carMake : json['car_make'],
     carModel : json['car_model'],
     carModelYear : json['car_model_year'],
     carVin : json['car_vin'],
     carColor : json['car_color'],
   );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['car_make'] = carMake;
    data['car_model'] = carModel;
    data['car_model_year'] = carModelYear;
    data['car_vin'] = carVin;
    data['car_color'] = carColor;
    return data;
  }
}
class CarsList {
  List<Car_Model> cars;

  CarsList(this.cars);

  factory CarsList.fromJson(List<dynamic> data) {
    List<Car_Model> temp = [];
    temp = data.map((p) => Car_Model.fromJson(p)).toList();
    return CarsList(temp);
  }
}