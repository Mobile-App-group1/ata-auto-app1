class Product_Tr {
  final String img;
  final String name_eg;
  final String price_eg;
  final String brand_eg;
  final String category_eg;
  final String part_eg;
  final String year_eg;
  final String condition_eg;
  final String name_kh;
  final String price_kh;
  final String brand_kh;
  final String category_kh;
  final String part_kh;
  final String year_kh;
  final String condition_kh;

  Product_Tr(
      {required this.img,
      required this.name_eg,
      required this.price_eg,
      required this.brand_eg,
      required this.category_eg,
      required this.part_eg,
      required this.year_eg,
      required this.condition_eg,
      required this.name_kh,
      required this.price_kh,
      required this.brand_kh,
      required this.category_kh,
      required this.part_kh,
      required this.year_kh,
      required this.condition_kh});
}

List<Product_Tr> product_tr = <Product_Tr>[
  Product_Tr(
      img: 'IMG',
      name_eg: 'Name Product :',
      price_eg: 'Price :',
      brand_eg: 'Brand :',
      category_eg: 'Category :',
      part_eg: 'Part :',
      year_eg: 'Year :',
      condition_eg: 'Condition',
      name_kh: 'ឈ្មោះមុខទំនិញ​ :',
      price_kh: 'ដំលៃ :',
      brand_kh: 'ម៉ាក :',
      category_kh: 'ប្រភេទ :',
      part_kh: 'ផ្នែក',
      year_kh: 'ឆ្នាំ',
      condition_kh: 'ស្ថានភាព')
];
