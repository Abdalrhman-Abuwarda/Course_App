
import '../../resources/assetsManager.dart';

class FreeCoursesModel{
  FreeCoursesModel({required this.title, required this.imagePath});
  final String title;
  final String imagePath;

  static List<FreeCoursesModel> listFreeCourses= [
    FreeCoursesModel(title: "Arts and Humanities", imagePath: ImageAssets.freeCourseImage1),
    FreeCoursesModel(title: "Computer Science", imagePath: ImageAssets.freeCourseImage2),
    FreeCoursesModel(title: "Economics and Finance", imagePath: ImageAssets.freeCourseImage3),
  ];
}