// To parse this JSON data, do
//
//     final bookingApi = bookingApiFromJson(jsonString);

import 'dart:convert';

BookingApi bookingApiFromJson(String str) =>
    BookingApi.fromJson(json.decode(str));

class BookingApi {
  BookingApi({
    required this.packages,
  });

  List<Package> packages;

  factory BookingApi.fromJson(Map<String, dynamic> json) => BookingApi(
        packages: List<Package>.from(
            json["packages"].map((x) => Package.fromJson(x))),
      );
}

class Package {
  Package({
    this.id,
    this.name,
    this.flight,
    this.accomondation,
    this.feeding,
    this.packageTour,
    this.airport,
    this.description,
    this.takeOffDate,
    this.returnDate,
    this.takeOffTime,
    this.price,
    this.agent,
    this.agentLogo,
  });

  int? id;
  String? name;
  String? flight;
  String? accomondation;
  String? feeding;
  String? packageTour;
  String? airport;
  String? description;
  DateTime? takeOffDate;
  DateTime? returnDate;
  DateTime? takeOffTime;
  dynamic price;
  String? agent;
  String? agentLogo;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        id: json["id"],
        name: json["name"],
        flight: json["flight"],
        accomondation: json["accomondation"],
        feeding: json["feeding"],
        packageTour: json["package_tour"],
        airport: json["airport"],
        description: json["description"],
        takeOffDate: DateTime.parse(json["take_off_date"]),
        returnDate: DateTime.parse(json["return_date"]),
        takeOffTime: DateTime.parse(json["take_off_time"]),
        price: json["price"],
        agent: json["agent"],
        agentLogo: json["agent_logo"],
      );
}
