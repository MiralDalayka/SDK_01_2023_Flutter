import 'package:flutter/material.dart%20';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/student_ex/student_model_01.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/student_ex/student_service_01.dart';

class StudentView1 extends StatefulWidget {
  const StudentView1({Key? key}) : super(key: key);

  @override
  State<StudentView1> createState() => _StudentView1State();
}

class _StudentView1State extends State<StudentView1> {
  final StudentService _service = StudentService();
  Student? student;

  @override
  void initState() {
    //init student
    // student = await _service.getData();
    () async {
      student = await _service.getData();
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (student == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Student Info NULL"),
        ),
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.green,
            strokeWidth: 10,
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Info"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Student name:${student!.name}"),
            Text("Student Id:${student!.id}"),
            Text("Student Score:${student!.score}")
          ],
        ),
      ),
    );
  }
}
