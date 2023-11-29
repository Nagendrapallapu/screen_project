class BestSellers {
  final String title;
  final String category;
  final double price;
  final String imageUrl;

  BestSellers({
    required this.title,
    required this.category,
    required this.price,
    required this.imageUrl,
  });

  static List<BestSellers> generateBestSellers() {
    return [
      BestSellers(
        title: 'Hot Coffee',
        category: 'Coffee',
        price: 9.89,
        imageUrl: 'assets/images/best1.png',
      ),
      BestSellers(
        title: 'BLACK COFFEE',
        category: 'Coffee Beans',
        price: 10.00,
        imageUrl:  'assets/images/arrival2.png',
      ),
      BestSellers(
        title: 'Badam Coffee',
        category: 'Badam Milk Mixed',
        price: 10.00,
        imageUrl:  'assets/images/detail2.png',
      ),

      // Add more best sellers as needed
    ];
  }
}
