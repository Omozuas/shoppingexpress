// To parse this JSON data, do
//
//     final MainProduct = MainProductFromJson(jsonString);

import 'dart:convert';

import 'package:shopexpres/apis/models/listOfProductItem.dart';

MainProduct mainProductFromJson(String str) =>
    MainProduct.fromJson(json.decode(str));

String mainProductToJson(MainProduct data) => json.encode(data.toJson());

class MainProduct {
  int page;
  int size;
  int total;
  dynamic debug;
  dynamic previousPage;
  dynamic nextPage;
  List<Item> items;

  MainProduct({
    required this.page,
    required this.size,
    required this.total,
    this.debug,
    this.previousPage,
    this.nextPage,
    required this.items,
  });

  factory MainProduct.fromJson(Map<String, dynamic> json) => MainProduct(
        page: json["page"],
        size: json["size"],
        total: json["total"],
        debug: json["debug"],
        previousPage: json["previous_page"],
        nextPage: json["next_page"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "size": size,
        "total": total,
        "debug": debug,
        "previous_page": previousPage,
        "next_page": nextPage,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

Item2 singleItemFromJson(String str) => Item2.fromJson(json.decode(str));

String singleItemToJson(Item2 data) => json.encode(data.toJson());
