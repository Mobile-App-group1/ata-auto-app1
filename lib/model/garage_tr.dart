class Garage_Tr {
  String name_eg;
  String locatione_eg;
  String car_expert_eg;
  String count_like_eg;
  String count_unlike_eg;
  String comment_eg;
  String name_kh;
  String locatione_kh;
  String car_expert_kh;
  String count_like_kh;
  String count_unlike_kh;
  String comment_kh;
  Garage_Tr(
      {required this.name_eg,
      required this.locatione_eg,
      required this.count_like_eg,
      required this.count_unlike_eg,
      required this.car_expert_eg,
      required this.comment_eg,
      required this.name_kh,
      required this.locatione_kh,
      required this.count_like_kh,
      required this.count_unlike_kh,
      required this.car_expert_kh,
      required this.comment_kh});
}

List<Garage_Tr> garage_tr = <Garage_Tr>[
  Garage_Tr(
      name_eg: 'Garage name :',
      locatione_eg: 'Location :',
      count_like_eg: 'count like',
      count_unlike_eg: 'count unlike',
      car_expert_eg: 'car expert',
      comment_eg: 'comment',
      name_kh: 'ឈ្មោះ​ហ្គារាស់',
      locatione_kh: 'ទីតាំង',
      count_like_kh: 'ចំនួនអ្នកចូលចិត្ត',
      count_unlike_kh: 'ចំនួនអ្នកមិនចូលចិត្ត',
      car_expert_kh: 'ជំនាញផ្នែកនៃឡាន',
      comment_kh: 'មតិរ')
];
