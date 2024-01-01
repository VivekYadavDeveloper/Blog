// To parse this JSON data, do
//
//     final updateTagsModel = updateTagsModelFromJson(jsonString);

import 'dart:convert';

UpdateTagsModel updateTagsModelFromJson(String str) =>
    UpdateTagsModel.fromJson(json.decode(str));

String updateTagsModelToJson(UpdateTagsModel data) =>
    json.encode(data.toJson());

class UpdateTagsModel {
  int? status;
  String? message;

  UpdateTagsModel({
    this.status,
    this.message,
  });

  factory UpdateTagsModel.fromJson(Map<String, dynamic> json) =>
      UpdateTagsModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
