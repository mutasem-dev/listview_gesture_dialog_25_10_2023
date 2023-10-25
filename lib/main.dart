import 'package:flutter/material.dart';
import 'student_card.dart';
import 'student.dart';

List students = [
  Student('Ahmad','03/1111','Hebron','215454'),
  Student('Hana','10/1111','Hebron','215454'),
  Student('Ali','20/1111','Hebron','215454'),
  Student('Mariam','21/1111','Hebron','215454'),
];
void main() {
  runApp(MaApp());
}

class MaApp extends StatelessWidget {
  const MaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Info'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) => StudentCard(students[index]),
      ),
    );
  }
}



