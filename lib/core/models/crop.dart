import 'package:flutter/material.dart';

class Crop {
  String id;
  String name;
  String imgUrl;
  bool isSelected;
  Color color;
  List<Disease> commonDiseases;

  Crop(
      {this.id,
      this.color,
      this.name,
      this.imgUrl,
      this.isSelected = false,
      this.commonDiseases});

  Crop.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class Disease {
  String name;
  List<String> imgUrls;
  String symptoms;
  String favorableConditions;
  String treatments;

  Disease(
      {this.name,
      this.imgUrls,
      this.treatments,
      this.symptoms,
      this.favorableConditions});
}
