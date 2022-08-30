import 'dart:convert';

MiniSliderItem miniSliderItemFromMap(String str) => MiniSliderItem.fromMap(json.decode(str));

String miniSliderItemToMap(MiniSliderItem data) => json.encode(data.toMap());

class MiniSliderItem {
  MiniSliderItem({
    this.id,
    this.urlImage,
    this.route,
    this.priority,
    this.createDate,
  });

  final String? id;
  final String? urlImage;
  final String? route;
  final int? priority;
  final DateTime? createDate;

  factory MiniSliderItem.fromMap(Map<String, dynamic> json) => MiniSliderItem(
    id: json["id"],
    urlImage: json["url_image"],
    route: json["route"],
    priority: json["priority"],
    createDate: DateTime.fromMicrosecondsSinceEpoch(json["create_date"].microsecondsSinceEpoch),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "url_image": urlImage,
    "route": route,
    "priority": priority,
    "create_date": createDate,
  };
}
