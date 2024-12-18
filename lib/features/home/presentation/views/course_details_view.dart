import 'package:final_task/features/home/data/models/course_model.dart';
import 'package:final_task/features/home/presentation/views/widgets/course_details_view_body.dart';
import 'package:flutter/material.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key, required this.courseModel});
  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Course details',
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: CourseDetailsViewBody(
        course: courseModel,
      ),
    );
  }
}
