/** To parse this JSON data, do
* ! final quotes = quotesFromJson(jsonString);
**/

import 'dart:convert';

Quotes quotesFromJson(String str) => Quotes.fromJson(json.decode(str));

String quotesToJson(Quotes data) => json.encode(data.toJson());

class Quotes {
  Quotes({
    this.id,
    this.languageCode,
    this.content = 'This is a quote',
    this.url,
    required this.originator,
    this.tags,
  });

  int? id;
  String? languageCode;
  String content;
  String? url;
  Originator originator;
  List<String>? tags;

  factory Quotes.fromJson(Map<String, dynamic> json) => Quotes(
    id: json["id"],
    languageCode: json["language_code"],
    content: json["content"],
    url: json["url"],
    originator: Originator.fromJson(json["originator"]),
    tags: List<String>.from(json["tags"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "language_code": languageCode,
    "content": content,
    "url": url,
    "originator": originator.toJson(),
    "tags": List<dynamic>.from(tags!.map((x) => x)),
  };
}

class Originator {
  Originator({
    this.id,
    this.name = 'Developer',
    this.url,
  });

  int? id;
  String name;
  String? url;

  factory Originator.fromJson(Map<String, dynamic> json) => Originator(
    id: json["id"],
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "url": url,
  };
}
// TODO: add all constructors in the UI
