

// To parse this JSON data, do
//
//     final store = storeFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

Store storeFromJson(String str) => Store.fromJson(json.decode(str));

String storeToJson(Store data) => json.encode(data.toJson());

List<Store> listStoreFromJson(String str) =>
    List<Store>.from(json.decode(str).map((x) => Store.fromJson(x)));

String listStoreToJson(List<Store> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Store extends Equatable{
    final int id;
    final String code;
    final String name;
    final String address;
    final String phone;
    final String lat;
    final String long;
    final String typeCode;
    final DateTime createdAt;
    final DateTime updatedAt;
    final dynamic village;
    final dynamic district;
    final dynamic city;
    final String province;
    final dynamic postalCode;
    final String distance;

   const Store({
        required this.id,
        required this.code,
        required this.name,
        required this.address,
        required this.phone,
        required this.lat,
        required this.long,
        required this.typeCode,
        required this.createdAt,
        required this.updatedAt,
        required this.village,
        required this.district,
        required this.city,
        required this.province,
        required this.postalCode,
        required this.distance,
    });

    factory Store.fromJson(Map<String, dynamic> json) => Store(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        lat: json["lat"],
        long: json["long"],
        typeCode: json["type_code"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        village: json["village"],
        district: json["district"],
        city: json["city"],
        province: json["province"],
        postalCode: json["postal_code"],
        distance: json["distance"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "address": address,
        "phone": phone,
        "lat": lat,
        "long": long,
        "type_code": typeCode,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "village": village,
        "district": district,
        "city": city,
        "province": province,
        "postal_code": postalCode,
        "distance": distance,
    };
    
      @override
      List<Object?> get props => [
        id,
        code,
        name,
        address,
        phone,
        lat,
        long,
        typeCode,
        createdAt,
        updatedAt,
        village,
        district,
        city,
        province,
        postalCode,
        distance,
      ];
}
