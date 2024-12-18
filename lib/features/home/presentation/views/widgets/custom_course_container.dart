import 'package:final_task/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:final_task/features/home/data/models/course_model.dart';
import 'package:final_task/features/home/presentation/views/course_details_view.dart';
import 'package:flutter/material.dart';

class CustomCourseContainer extends StatelessWidget {
  const CustomCourseContainer({
    super.key,
    required this.course,
  });
  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 120,
                height: 100,
                child: Image.asset(
                  course.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(course.instructorName),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            course.rating.toString(),
                            style: const TextStyle(color: Colors.amber),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          )
                        ],
                      ),
                      Text(course.price),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 37,
                    child: CustomButton(
                      text: const Text(
                        'Course details',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: const Color(0xffF39200),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CourseDetailsView(courseModel: course);
                          },
                        ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
