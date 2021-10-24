import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel {
  String title;
  String category;
  String descripcion;
  int ranqueable;

  ItemModel({
    this.title,
    this.category,
    this.descripcion,
    this.ranqueable,
  });

  ItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    category = json['category'];
    descripcion = json['descripcion'];
    ranqueable = json['ranqueable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['category'] = this.category;
    data['descripcion'] = this.descripcion;
    if (this.ranqueable != null) {
      data['ranqueable'] = this.ranqueable;
    }
    return data;
  }
}
