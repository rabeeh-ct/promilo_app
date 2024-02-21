class EditStoreParamsModel {
  final String token;
  final String slugStore;
  final String title;
  final String startTime;
  final String endTime;
  final String description;
  final String address;
  final String storeEmail;
  final String contactNo;
  final String location;
  final String? logo;
  final String? coverPhoto;

  EditStoreParamsModel({
    required this.token,
    required this.slugStore,
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.description,
    required this.address,
    required this.storeEmail,
    required this.contactNo,
    required this.location,
    required this.logo,
    required this.coverPhoto,
  });

  factory EditStoreParamsModel.fromJson(Map<String, dynamic> json) => EditStoreParamsModel(
    token: json["token"],
    slugStore: json["slug_store"],
    title: json["title"],
    startTime: json["start_time"],
    endTime: json["end_time"],
    description: json["description"],
    address: json["address"],
    storeEmail: json["store_email"],
    contactNo: json["contact_no"],
    location: json["location"],
    logo: json["logo"],
    coverPhoto: json["cover_photo"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "slug_store": slugStore,
    "title": title,
    "start_time": startTime,
    "end_time": endTime,
    "description": description,
    "address": address,
    "store_email": storeEmail,
    "contact_no": contactNo,
    "location": location,
    "logo": logo,
    "cover_photo": coverPhoto,
  };
}