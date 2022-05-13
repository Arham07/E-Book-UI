class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num rating;
  String review;
  num height;

  Book(
      {required this.type,
      required this.name,
      required this.publisher,
      required this.date,
      required this.imgUrl,
      required this.score,
      required this.rating,
      required this.review,
      required this.height});

  static List<Book> generateBooks() {
    return [
      Book(
          type: 'History',
          name: 'This is the way.',
          publisher: 'isStudio',
          date: DateTime(2019, 3, 23),
          imgUrl: 'assets/images/book1.jpeg',
          score: 892,
          rating: 4.7,
          review: 'This is review',
          height: 220.0),
      Book(
          type: 'History',
          name: 'This is the way.',
          publisher: 'isStudio',
          date: DateTime(2019, 3, 23),
          imgUrl: 'assets/images/book2.jpeg',
          score: 892,
          rating: 4.7,
          review: 'This is review',
          height: 220.0),
      Book(
          type: 'History',
          name: 'This is the way.',
          publisher: 'isStudio',
          date: DateTime(2019, 3, 23),
          imgUrl: 'assets/images/book3.jpeg',
          score: 892,
          rating: 4.7,
          review: 'This is review',
          height: 220.0),
      Book(
          type: 'History',
          name: 'This is the way.',
          publisher: 'isStudio',
          date: DateTime(2019, 3, 23),
          imgUrl: 'assets/images/book4.jpeg',
          score: 892,
          rating: 4.7,
          review: 'This is review',
          height: 220.0),
      Book(
          type: 'History',
          name: 'This is the way.',
          publisher: 'isStudio',
          date: DateTime(2019, 3, 23),
          imgUrl: 'assets/images/book5.jpeg',
          score: 892,
          rating: 4.7,
          review: 'This is review',
          height: 220.0),
      Book(
          type: 'History',
          name: 'This is the way.',
          publisher: 'isStudio',
          date: DateTime(2019, 3, 23),
          imgUrl: 'assets/images/book6.jpeg',
          score: 892,
          rating: 4.7,
          review: 'This is review',
          height: 220.0),
    ];
  }
}
