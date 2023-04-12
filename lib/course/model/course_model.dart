class Course{
  final String title;
  final String description;
  final String courseInfo;
  final String duration;
  final String price;
  final int color;
  final String image;

  Course({
    required this.color,
    required this.price,
    required this.title,
    required this.description,
    required this.duration,
    required this.image,
    required this.courseInfo
  });
}