import 'package:flutter/material.dart%20';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/address_ex/address_model_01.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/address_ex/address_service_01.dart';

class AddressView1 extends StatefulWidget {
  const AddressView1({Key? key}) : super(key: key);

  @override
  State<AddressView1> createState() => _AddressView1State();
}

class _AddressView1State extends State<AddressView1> {
  final AddressService _service = AddressService();
  AddressModel? addressModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address Info"),
      ),
      body: FutureBuilder(
        future: _service.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            addressModel = snapshot.data as AddressModel;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("City name:${addressModel!.city}"),
                  Text("Street 1 :${addressModel!.streets![0]}"),
                  Text("Street 2 :${addressModel!.streets![1]}")
                ],
              ),
            );
          }
          return Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}
