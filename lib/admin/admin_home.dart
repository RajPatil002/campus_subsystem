import 'package:campus_subsystem/admin/faculty_records_add.dart';
import 'package:campus_subsystem/admin/student_records_add.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StudentRecordAdd())),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/add_student.gif',
                        fit: BoxFit.fill,
                      ),
                      const Text("Add Students")
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FacultyRecordsAdd())),
                child: Card(
                  child: Image.asset('assets/icons/add_teacher.gif', fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
