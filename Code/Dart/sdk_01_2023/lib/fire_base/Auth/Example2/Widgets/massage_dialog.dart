import 'package:flutter/material.dart';

void simpleDialogToUse(BuildContext context,String massage) async {

  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: SizedBox(
            height: 300,
            // width: 100,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.done_outline,
                    size: 60.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Hey There',
                      style: TextStyle(
                        fontFamily: 'NovaSquare',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      massage,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  const Text(
                    'Operation Completed',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        child: const Text(
                          'Close',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}