// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Movie {
  final String name;
  final Image image;
  Movie({
    required this.name,
    required this.image,
  });
  factory Movie.fromMap(map) =>
      Movie(name: map['title'], image: map['poster_path']);
 
  Map<String, dynamic> toMap() => {'title': name, 'poster_path': image};
}
