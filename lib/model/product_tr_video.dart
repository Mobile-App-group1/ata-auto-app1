class VideoTrProduct {
  String name_eg;
  String img_eg;
  String videro_eg;
  String tital_eg;
  String disciption_eg;
  String time_eg;
  String name_kh;

  String tital_kh;
  String disciption_kh;
  String time_kh;
  VideoTrProduct({
    required this.disciption_eg,
    required this.img_eg,
    required this.videro_eg,
    required this.name_eg,
    required this.time_eg,
    required this.tital_eg,
    required this.disciption_kh,
    required this.name_kh,
    required this.time_kh,
    required this.tital_kh,
  });
}

List<VideoTrProduct> videoTrProduct = <VideoTrProduct>[
  VideoTrProduct(
      disciption_eg: 'discription',
      img_eg: 'Img',
      videro_eg: 'Video',
      name_eg: 'Name video:',
      time_eg: 'Time :',
      tital_eg: 'Tital :',
      disciption_kh: 'ការ វិនិច្ឆ័យ',
      name_kh: 'ឈ្មោះវិឌីអូរ​ :',
      time_kh: 'រយះពេលវីឌីអូ​ :',
      tital_kh: 'ចំណងជើង')
];
