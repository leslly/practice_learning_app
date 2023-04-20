class Course{
  final String title;
  final String description;
  final String courseInfo;
  final String duration;
  final double price;
  final int color;
  final String image;
  final int courseId;

  Course({
    required this.courseId,
    required this.color,
    required this.price,
    required this.title,
    required this.description,
    required this.duration,
    required this.image,
    required this.courseInfo
  });
}