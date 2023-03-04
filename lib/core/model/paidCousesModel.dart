
import '../../resources/assetsManager.dart';

class PaidCoursesModel{
  PaidCoursesModel({required this.title,required this.imagePath});
  final String title;
  final String imagePath;
  
  static List<PaidCoursesModel> listPaidCourses = [
    PaidCoursesModel(title: "Social Media Marketing", imagePath: ImageAssets.paidCourseImage1),
    PaidCoursesModel(title: "Social Media Influencer", imagePath: ImageAssets.paidCourseImage2),
    PaidCoursesModel(title: "Biology & The Scienti..", imagePath: ImageAssets.paidCourseImage3),
  ];
}