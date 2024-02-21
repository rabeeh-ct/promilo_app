class AppVersionEntity {
  AppVersionEntity({
    required this.status,
    required this.messageEn,
    required this.messageAr,
     this.data,
  });

  final int status;
  final String messageEn;
  final String messageAr;
  final AppVersionDataEntity? data;
}
class AppVersionDataEntity {
  AppVersionDataEntity({
     this.newUpdate,
     this.forceUpdate,
     this.link,
     this.image,
    required this.sponsors,
  });

  final int? newUpdate;
  final int? forceUpdate;
  final String? link;
  final String? image;
  final List<SponsorEntity> sponsors;
}
class SponsorEntity {
  SponsorEntity({
    required this.lightModeLogo,
    required this.darkModeLogo,
  });

  final String lightModeLogo;
  final String darkModeLogo;
}