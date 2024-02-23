class DescriptionEntity {
  List<ImageEntity> images;
  int saveCount;
  int likeCount;
  double rating;
  String actorName;
  int durationIinMinutes;
  int avgFee;
  String about;

  DescriptionEntity({
    required this.images,
    required this.saveCount,
    required this.likeCount,
    required this.rating,
    required this.actorName,
    required this.durationIinMinutes,
    required this.avgFee,
    required this.about,
  });
}

class ImageEntity {
  String image;
  String link;

  ImageEntity({
    required this.image,
    required this.link,
  });
}