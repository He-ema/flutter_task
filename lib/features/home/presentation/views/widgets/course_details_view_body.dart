import 'dart:math';

import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:confetti/confetti.dart';
import 'package:final_task/features/home/data/models/course_model.dart';
import 'package:final_task/features/home/presentation/views/widgets/my_animated_stars.dart';
import 'package:flutter/material.dart';

class CourseDetailsViewBody extends StatefulWidget {
  const CourseDetailsViewBody({super.key, required this.course});
  final CourseModel course;
  @override
  State<CourseDetailsViewBody> createState() => _CourseDetailsViewBodyState();
}

class _CourseDetailsViewBodyState extends State<CourseDetailsViewBody> {
  final controller = ConfettiController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 342 / 202,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              widget.course.img,
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.course.title,
                          // style: AppStyles.styleSomarSansBold16,
                        ),
                        Text(
                          widget.course.price,
                          // style: AppStyles.styleSomarSansBold20,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     MyAnimatedStars(
                    //       isReadOnly: true,
                    //       onChanged: (rating) {},
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 24,
                    // ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        radius: 24,
                        // backgroundColor: kPrimaryColor,
                      ),
                      title: Text(
                        widget.course.instructorName,
                        // style: AppStyles.styleSomarSansMedium14.copyWith(
                        // color: Colors.black,
                      ),
                      subtitle: Text(
                        widget.course.instructorPosition,
                        // style: AppStyles.styleSomarSansRegular14.copyWith(
                        //   color: const Color(0xff646363),
                        // ),
                      ),
                      trailing: const Icon(
                        Icons.chat_outlined,
                        color: Color(0xff646363),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'course details',
                      // style: AppStyles.styleSomarSansBold16,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.course.subtitle,
                      // style: AppStyles.styleSomarSansRegular14.copyWith(
                      //   color: const Color(0xff646363),
                      // ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'Course Rating',
                      // style: AppStyles.styleSomarSansBold16,
                    ),
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    // Text(
                    //   'يمكنك تقييم الدورة لترك رأيك',
                    //   style: AppStyles.styleSomarSansRegular14.copyWith(
                    //     color: const Color(0xff646363),
                    //   ),
                    // ),

                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyAnimatedStars(
                          isReadOnly: false,
                          onChanged: (rating) {
                            print(rating);
                            if (controller.state ==
                                ConfettiControllerState.playing) {
                              controller.stop();
                              controller.play();
                            } else {
                              controller.play();
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ConfettiWidget(
          confettiController: controller,
          shouldLoop: false,
          numberOfParticles: 200,
          emissionFrequency: 0,
          blastDirectionality: BlastDirectionality.explosive,
          blastDirection: pi / 2,
        )
      ],
    );
  }
}
