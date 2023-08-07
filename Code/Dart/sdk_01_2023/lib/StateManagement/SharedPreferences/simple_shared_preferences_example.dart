import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SimpleSharedPreferencesExample extends StatefulWidget {
  const SimpleSharedPreferencesExample({Key? key}) : super(key: key);

  @override
  State<SimpleSharedPreferencesExample> createState() =>
      _SimpleSharedPreferencesExampleState();
}

class _SimpleSharedPreferencesExampleState
    extends State<SimpleSharedPreferencesExample> {
  String? readData;

  String? savedData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple SharedPreferences Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'readData : ${readData ?? 'no data'}',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Divider(
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'savedData : ${savedData ?? 'no Data'}',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        // await -  async are key words that refers to future function
                        onPressed: () async {
                          //1. creating SP instance
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          //2. save data  - send data to SP file using set functions
                          String name = 'Ali';
                          //this will save ['name','Ali'] as [key,value] in the map
                          //set functions returns future bool , T -> if the data saved successfully , F if some thing wrong happened
                          bool x = await prefs.setString('name', name);
                          setState(() {
                            if (x) {
                              savedData = name;
                            } else {
                              savedData = "Wrong data";
                            }
                          });
                        },
                        child: Text('Save Data')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () async{
                          //1. creating SP instance
                          SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                          //2. retrieve data  - get data from SP file using get functions
                          //get functions returns the saved value in the key
                          String name = prefs.getString('name')??'empty'; //might return null  if the value is not found
                          setState(() {
                          readData = name;
                          });
                        }, child: Text('Read Data')),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
