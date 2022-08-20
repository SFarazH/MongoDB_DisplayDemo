import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) => MongoDbModel.fromJson(json.decode(str));
String mongoDbModeltoJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel{


  MongoDbModel({
    required this.id,
    required this.name,
    required this.location,
    required this.marks,
});

  ObjectId id;
  String name;
  String location;
  num marks;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
      id: json["_id"],
      name :json["name"],
      location: json["location"],
      marks: json["marks"],
  );

  Map<String, dynamic> toJson() => {
    "_id" : id,
    "name" : name,
    "location" : location,
    "marks" : marks,
  };

}