//lib/models/book.dart
class Book{   //Book model을 생성하여 자주 사용하는 model을 활용하기 간단하게 함 
  final String title;
  final String subtitle;
  final String description;
  final String image;
  Book({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
}