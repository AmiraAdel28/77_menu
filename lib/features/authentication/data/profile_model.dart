class ProfileInfoModel {
  UserInfo? userInfo;

  ProfileInfoModel({
    this.userInfo,
  });

  factory ProfileInfoModel.fromJson(Map<String, dynamic> json) {
    return ProfileInfoModel(
      userInfo:
          json["userInfo"] == null ? null : UserInfo.fromJson(json["userInfo"]),
    );
  }
}

class UserInfo {
  int? id;
  String? username;
  String? password;
  int? idRes;
  String? userType;
  bool? submitted;
  int? standQuantity;
  int? totalprice;
  MainTable? mainTable;

  UserInfo({
    this.id,
    this.username,
    this.password,
    this.idRes,
    this.userType,
    this.submitted,
    this.standQuantity,
    this.totalprice,
    this.mainTable,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      id: json["id"],
      username: json["username"],
      password: json["password"],
      idRes: json["id_res"],
      userType: json["user_type"],
      submitted: json["submitted"],
      standQuantity: json["stand_quantity"],
      totalprice: json["totalprice"],
      mainTable: json["main_table"] == null
          ? null
          : MainTable.fromJson(json["main_table"]),
    );
  }
}

class MainTable {
  MainTable({
    this.id,
    this.idStand,
    this.idResType,
    this.resName,
    this.location,
    this.createDate,
    this.endDate,
    this.phone,
    this.logo,
    this.telephone,
    this.city,
    this.region,
    this.accountManager,
    this.domainName,
    this.comment,
    this.background,
    this.fontColor,
    this.theme,
    this.cost,
    this.sale,
    this.facebook,
    this.instagram,
    this.whatsapp,
    this.tiktok,
    this.status,
    this.customize,
    this.delivery,
  });

  final int? id;
  final int? idStand;
  final int? idResType;
  final String? resName;
  final String? location;
  final DateTime? createDate;
  final DateTime? endDate;
  final String? phone;
  final String? logo;
  final dynamic telephone;
  final dynamic city;
  final dynamic region;
  final dynamic accountManager;
  final dynamic domainName;
  final dynamic comment;
  final dynamic background;
  final dynamic fontColor;
  final int? theme;
  final dynamic cost;
  final dynamic sale;
  final dynamic facebook;
  final dynamic instagram;
  final dynamic whatsapp;
  final dynamic tiktok;
  final int? status;
  final dynamic customize;
  final bool? delivery;

  factory MainTable.fromJson(Map<String, dynamic> json) {
    return MainTable(
      id: json["id"],
      idStand: json["id_stand"],
      idResType: json["id_res_type"],
      resName: json["res_name"],
      location: json["location"],
      createDate: DateTime.tryParse(json["create_date"] ?? ""),
      endDate: DateTime.tryParse(json["end_date"] ?? ""),
      phone: json["phone"],
      logo: json["logo"],
      telephone: json["telephone"],
      city: json["city"],
      region: json["region"],
      accountManager: json["account_manager"],
      domainName: json["domain_name"],
      comment: json["comment"],
      background: json["background"],
      fontColor: json["font_color"],
      theme: json["theme"],
      cost: json["cost"],
      sale: json["sale"],
      facebook: json["facebook"],
      instagram: json["instagram"],
      whatsapp: json["whatsapp"],
      tiktok: json["tiktok"],
      status: json["status"],
      customize: json["customize"],
      delivery: json["delivery"],
    );
  }
}
