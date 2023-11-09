// To parse this JSON data, do
//
//     final logoutModel = logoutModelFromJson(jsonString);

import 'dart:convert';

AddTagsModel addTagsModelFromJson(String str) =>
    AddTagsModel.fromJson(json.decode(str));

String addTagsModelToJson(AddTagsModel data) => json.encode(data.toJson());

class AddTagsModel {
  int? status;
  String? message;

  AddTagsModel({
    this.status,
    this.message,
  });

  factory AddTagsModel.fromJson(Map<String, dynamic> json) =>
      AddTagsModel(message: json["message"], status: json["status"]);

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
