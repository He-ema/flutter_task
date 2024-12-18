import 'package:final_task/core/utils/assets.dart';

class CourseModel {
  final String title;
  final String img;
  final String price;
  final String subtitle;
  final String instructorName;
  final String instructorPosition;
  final double rating;

  const CourseModel(
      {required this.title,
      required this.img,
      required this.price,
      required this.subtitle,
      required this.instructorName,
      required this.instructorPosition,
      required this.rating});
}

List<CourseModel> english = [
  const CourseModel(
      title: 'Learn English',
      img: Assets.imagesE1,
      price: '400 LE',
      subtitle:
          'A very Good course for learning english language with a very good price',
      instructorName: 'Ahmed mohamed',
      instructorPosition: 'English Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn British English',
      price: '250 LE',
      img: Assets.imagesE2,
      subtitle:
          'A very Good course for learning english language with a very good price',
      instructorName: 'Kareem mohamed',
      instructorPosition: 'English Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn advanced English',
      price: '500 LE',
      img: Assets.imagesE3,
      subtitle:
          'A very Good course for learning english language with a very good price',
      instructorName: 'Ayman sayed',
      instructorPosition: 'English Instructor',
      rating: 2.5),
];
List<CourseModel> italy = [
  const CourseModel(
      title: 'Learn Italy',
      img: Assets.imagesI1,
      price: '400 LE',
      subtitle:
          'A very Good course for learning Italy language with a very good price',
      instructorName: 'Ahmed mohamed',
      instructorPosition: 'Italy Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn Italian',
      price: '250 LE',
      img: Assets.imagesI2,
      subtitle:
          'A very Good course for learning Italy language with a very good price',
      instructorName: 'Kareem mohamed',
      instructorPosition: 'Italy Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn advanced English',
      price: '500 LE',
      img: Assets.imagesI3,
      subtitle:
          'A very Good course for learning Italy language with a very good price',
      instructorName: 'Ayman sayed',
      instructorPosition: 'Italy Instructor',
      rating: 2.5),
];
List<CourseModel> germany = [
  const CourseModel(
      title: 'Learn Italy',
      img: Assets.imagesG1,
      price: '400 LE',
      subtitle:
          'A very Good course for learning Germany language with a very good price',
      instructorName: 'Ahmed mohamed',
      instructorPosition: 'Germany Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn Germany',
      price: '250 LE',
      img: Assets.imagesG2,
      subtitle:
          'A very Good course for learning Germany language with a very good price',
      instructorName: 'Kareem mohamed',
      instructorPosition: 'Italy Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn advanced Germany',
      price: '500 LE',
      img: Assets.imagesG3,
      subtitle:
          'A very Good course for learning Germany language with a very good price',
      instructorName: 'Ayman sayed',
      instructorPosition: 'Germany Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn advanced Germany',
      price: '500 LE',
      img: Assets.imagesG4,
      subtitle:
          'A very Good course for learning Germany language with a very good price',
      instructorName: 'Ayman sayed',
      instructorPosition: 'Germany Instructor',
      rating: 2.5),
  const CourseModel(
      title: 'Learn advanced Germany',
      price: '500 LE',
      img: Assets.imagesG5,
      subtitle:
          'A very Good course for learning Germany language with a very good price',
      instructorName: 'Ayman sayed',
      instructorPosition: 'Germany Instructor',
      rating: 2.5),
];
