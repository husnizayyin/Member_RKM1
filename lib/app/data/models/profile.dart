// // To parse this JSON data, do
// //
// //     final profile = profileFromJson(jsonString);

// import 'dart:convert';

// import 'package:equatable/equatable.dart';

// Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

// String profileToJson(Profile data) => json.encode(data.toJson());

// class Profile extends Equatable {
//   final String? username;
//   final String? emailUser;
//   final String? phoneUser;
//   final String? verify;
//   final String? image;
//   final String? code;
//   final String? name;
//   final String? category;
//   final String? idType;
//   final String? idNumber;
//   final String? gender;
//   final DateTime? birthDate;
//   final String? birthPlace;
//   final String? street;
//   final dynamic village;
//   final dynamic district;
//   final dynamic city;
//   final dynamic province;
//   final dynamic postalCode;
//   final String? job;
//   final String? religion;
//   final String? maritalStatus;
//   final String? lastEducation;
//   final DateTime? joinedDate;
//   final String? point;
//   final int? totalSpending;
//   final dynamic lastTransaction;
//   final String? status;
//   final AddOn? addOn;

//   const Profile({
//     this.username,
//     this.emailUser,
//     this.phoneUser,
//     this.verify,
//     this.image,
//     this.code,
//     this.name,
//     this.category,
//     this.idType,
//     this.idNumber,
//     this.gender,
//     this.birthDate,
//     this.birthPlace,
//     this.street,
//     this.village,
//     this.district,
//     this.city,
//     this.province,
//     this.postalCode,
//     this.job,
//     this.religion,
//     this.maritalStatus,
//     this.lastEducation,
//     this.joinedDate,
//     this.point,
//     this.totalSpending,
//     this.lastTransaction,
//     this.status,
//     this.addOn,
//   });

//   @override
//   List<Object?> get props => [
//         username,
//         emailUser,
//         phoneUser,
//         verify,
//         image,
//         code,
//         name,
//         category,
//         idType,
//         idNumber,
//         gender,
//         birthDate,
//         birthPlace,
//         street,
//         village,
//         district,
//         city,
//         province,
//         postalCode,
//         job,
//         religion,
//         maritalStatus,
//         lastEducation,
//         joinedDate,
//         point,
//         totalSpending,
//         lastTransaction,
//         status,
//         addOn,
//       ];

//   factory Profile.fromJson(Map<String, dynamic> json) => Profile(
//         username: json["username"],
//         emailUser: json["email_user"],
//         phoneUser: json["phone_user"],
//         verify: json["verify"],
//         image: json["image"],
//         code: json["code"],
//         name: json["name"],
//         category: json["category"],
//         idType: json["id_type"],
//         idNumber: json["id_number"],
//         gender: json["gender"],
//         birthDate: json["birth_date"] == null
//             ? null
//             : DateTime.parse(json["birth_date"]),
//         birthPlace: json["birth_place"],
//         street: json["street"],
//         village: json["village"],
//         district: json["district"],
//         city: json["city"],
//         province: json["province"],
//         postalCode: json["postal_code"],
//         job: json["job"],
//         religion: json["religion"],
//         maritalStatus: json["marital_status"],
//         lastEducation: json["last_education"],
//         joinedDate: json["joined_date"] == null
//             ? null
//             : DateTime.parse(json["joined_date"]),
//         point: json["point"],
//         totalSpending: json["total_spending"] == null
//             ? null
//             : int.parse(json["total_spending"]),
//         lastTransaction: json["last_transaction"],
//         status: json["status"],
//         addOn: json["marker"] == null ? null : AddOn.fromJson(json["marker"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "username": username,
//         "email_user": emailUser,
//         "phone_user": phoneUser,
//         "verify": verify,
//         "image": image,
//         "code": code,
//         "name": name,
//         "category": category,
//         "id_type": idType,
//         "id_number": idNumber,
//         "gender": gender,
//         "birth_date": birthDate,
//         "birth_place": birthPlace,
//         "street": street,
//         "village": village,
//         "district": district,
//         "city": city,
//         "province": province,
//         "postal_code": postalCode,
//         "job": job,
//         "religion": religion,
//         "marital_status": maritalStatus,
//         "last_education": lastEducation,
//         "joined_date": joinedDate?.toIso8601String(),
//         "point": point,
//         "total_spending": totalSpending,
//         "last_transaction": lastTransaction,
//         "status": status,
//         "marker": addOn?.toJson(),
//       };
// }

// class AddOn extends Equatable {
//   final bool? hasPin;
//   final bool? complete;
//   final dynamic villageId;
//   final int? voucherTotal;

//   const AddOn({
//     this.hasPin,
//     this.complete,
//     this.villageId,
//     this.voucherTotal,
//   });

//   @override
//   List<Object?> get props => [
//         hasPin,
//         complete,
//         villageId,
//         voucherTotal,
//       ];

//   factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
//         hasPin: json["has_pin"],
//         complete: json["complete"],
//         villageId: json["village_id"],
//         voucherTotal: json["voucher_total"],
//       );

//   Map<String, dynamic> toJson() => {
//         "has_pin": hasPin,
//         "complete": complete,
//         "village_id": villageId,
//         "voucher_total": voucherTotal,
//       };
// }
// // To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

//new

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    final String? success;
    final String? noMember;
    final String? codeName;
    final String? loyalty;
    final String? username;
    final String? email;
    final dynamic idType;
    final dynamic idNumber;
    final String? name;
    final int? group;
    final dynamic pin;
    final dynamic gender;
    final dynamic birthDate;
    final dynamic birthPlace;
    final String? image;
    final String? contact;
    final dynamic religion;
    final dynamic maritalStatus;
    final String? job;
    final dynamic villageId;
    final dynamic address;
    final dynamic village;
    final dynamic district;
    final dynamic city;
    final dynamic province;
    final dynamic postalCode;
    final String? fullAddress;
    final dynamic education;
    final int? loyaltyPoint;
    final DateTime? joinedDate;
    final int? spendingTotal;
    final String? statusActive;
    final int? verifyStatus;
    final dynamic lastActivity;
    final bool? complete;
    final String? category;
    final String? voucherTotal;

    Profile({
        this.success,
        this.noMember,
        this.codeName,
        this.loyalty,
        this.username,
        this.email,
        this.idType,
        this.idNumber,
        this.name,
        this.group,
        this.pin,
        this.gender,
        this.birthDate,
        this.birthPlace,
        this.image,
        this.contact,
        this.religion,
        this.maritalStatus,
        this.job,
        this.villageId,
        this.address,
        this.village,
        this.district,
        this.city,
        this.province,
        this.postalCode,
        this.fullAddress,
        this.education,
        this.loyaltyPoint,
        this.joinedDate,
        this.spendingTotal,
        this.statusActive,
        this.verifyStatus,
        this.lastActivity,
        this.complete,
        this.category,
        this.voucherTotal,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        success: json["success"],
        noMember: json["no_member"],
        codeName: json["code_name"],
        loyalty: json["loyalty"],
        username: json["username"],
        email: json["email"],
        idType: json["id_type"],
        idNumber: json["id_number"],
        name: json["name"],
        group: json["group"],
        pin: json["pin"],
        gender: json["gender"],
        birthDate: json["birth_date"],
        birthPlace: json["birth_place"],
        image: json["image"],
        contact: json["contact"],
        religion: json["religion"],
        maritalStatus: json["marital_status"],
        job: json["job"],
        villageId: json["village_id"],
        address: json["address"],
        village: json["village"],
        district: json["district"],
        city: json["city"],
        province: json["province"],
        postalCode: json["postal_code"],
        fullAddress: json["full_address"],
        education: json["education"],
        loyaltyPoint: json["loyalty_point"],
        joinedDate: json["joined_date"] == null ? null : DateTime.parse(json["joined_date"]),
        spendingTotal: json["spending_total"],
        statusActive: json["status_active"],
        verifyStatus: json["verify_status"],
        lastActivity: json["last_activity"],
        complete: json["complete"],
        category: json["category"],
        voucherTotal: json["voucher_total"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "no_member": noMember,
        "code_name": codeName,
        "loyalty": loyalty,
        "username": username,
        "email": email,
        "id_type": idType,
        "id_number": idNumber,
        "name": name,
        "group": group,
        "pin": pin,
        "gender": gender,
        "birth_date": birthDate,
        "birth_place": birthPlace,
        "image": image,
        "contact": contact,
        "religion": religion,
        "marital_status": maritalStatus,
        "job": job,
        "village_id": villageId,
        "address": address,
        "village": village,
        "district": district,
        "city": city,
        "province": province,
        "postal_code": postalCode,
        "full_address": fullAddress,
        "education": education,
        "loyalty_point": loyaltyPoint,
        "joined_date": joinedDate?.toIso8601String(),
        "spending_total": spendingTotal,
        "status_active": statusActive,
        "verify_status": verifyStatus,
        "last_activity": lastActivity,
        "complete": complete,
        "category": category,
        "voucher_total": voucherTotal,
    };
}
