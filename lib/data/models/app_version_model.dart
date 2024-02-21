import '../../domain/entities/app_version_entity.dart';

class AppVersionModel extends AppVersionEntity {
  AppVersionModel({
    required super.status,
    required super.messageEn,
    required super.messageAr,
    this.dataModel,
  }) : super(data: dataModel);
  final AppVersionDataModel? dataModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) => AppVersionModel(
        status: json["status"],
        messageEn: json["message_en"],
        messageAr: json["message_ar"],
        dataModel: json["data"] == null ? null : AppVersionDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message_en": messageEn,
        "message_ar": messageAr,
        "data": dataModel?.toJson(),
      };
}

class AppVersionDataModel extends AppVersionDataEntity {
  AppVersionDataModel({
    super.newUpdate,
    super.forceUpdate,
    super.link,
    super.image,
    required this.sponsorsModel,
  }) : super(sponsors: sponsorsModel);
  final List<SponsorModel> sponsorsModel;

  factory AppVersionDataModel.fromJson(Map<String, dynamic> json) => AppVersionDataModel(
        newUpdate: json["new_update"],
        forceUpdate: json["force_update"],
        link: json["link"],
        image: json["image"],
        sponsorsModel:
            List<SponsorModel>.from(json["sponsors"].map((x) => SponsorModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "new_update": newUpdate,
        "force_update": forceUpdate,
        "link": link,
        "image": image,
        "sponsors": List<dynamic>.from(sponsorsModel.map((x) => x.toJson())),
      };
}

class SponsorModel extends SponsorEntity {
  SponsorModel({
    required super.lightModeLogo,
    required super.darkModeLogo,
  });

  factory SponsorModel.fromJson(Map<String, dynamic> json) => SponsorModel(
        lightModeLogo: json["light_mode"],
        darkModeLogo: json["dark_mode"],
      );

  Map<String, dynamic> toJson() => {
        "light_mode": lightModeLogo,
        "dark_mode": darkModeLogo,
      };
}
