class Shop_Product {
  String name_eg;
  String locatione_eg;
  String count_like_eg;
  String count_unlike_eg;
  String comment_eg;
  String name_kh;
  String locatione_kh;
  String count_like_kh;
  String count_unlike_kh;
  String comment_kh;
  Shop_Product(
      {required this.name_eg,
      required this.locatione_eg,
      required this.count_like_eg,
      required this.count_unlike_eg,
      required this.comment_eg,
      required this.name_kh,
      required this.locatione_kh,
      required this.count_like_kh,
      required this.count_unlike_kh,
      required this.comment_kh});
}

List<Shop_Product> shop_product = <Shop_Product>[
  Shop_Product(
      name_eg: 'Shop name :',
      locatione_eg: 'Location :',
      count_like_eg: 'count like',
      count_unlike_eg: 'count unlike',
      comment_eg: 'comment',
      name_kh: 'ឈ្មោះ​ហាង',
      locatione_kh: 'ទីតាំង',
      count_like_kh: 'ចំនួនអ្នកចូលចិត្ត',
      count_unlike_kh: 'ចំនួនអ្នកមិនចូលចិត្ត',
      comment_kh: 'មតិរ')
];
