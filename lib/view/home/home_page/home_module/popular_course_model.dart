// To parse this JSON data, do
//
//     final popularCourses = popularCoursesFromJson(jsonString);

import 'dart:convert';

PopularCourses popularCoursesFromJson(String str) => PopularCourses.fromJson(json.decode(str));

String popularCoursesToJson(PopularCourses data) => json.encode(data.toJson());

class PopularCourses {
    PopularCourses({
       required this.img,
       required this.title,
       required this.instructor,
       required this.duration,
      required  this.bestseller,
      required  this.rating,
    });

    String img;
    String title;
    String instructor;
    String duration;
    bool bestseller;
    int rating;

    factory PopularCourses.fromJson(Map<String, dynamic> json) => PopularCourses(
        img: json["img"],
        title: json["title"],
        instructor: json["instructor"],
        duration: json["duration"],
        bestseller: json["bestseller"],
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "img": img,
        "title": title,
        "instructor": instructor,
        "duration": duration,
        "bestseller": bestseller,
        "rating": rating,
    };
}
