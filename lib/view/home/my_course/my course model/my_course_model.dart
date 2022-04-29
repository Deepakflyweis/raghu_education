// To parse this JSON data, do
//
//     final myCourseModel = myCourseModelFromJson(jsonString);

import 'dart:convert';

MyCourseModel myCourseModelFromJson(String str) => MyCourseModel.fromJson(json.decode(str));

String myCourseModelToJson(MyCourseModel data) => json.encode(data.toJson());

class MyCourseModel {
    MyCourseModel({
        this.course,
        this.instructor,
        this.rating,
        this.time,
        this.img,
    });

    String ?course;
    String ?instructor;
    int ?rating;
    String ?time;
    String ?img;

    factory MyCourseModel.fromJson(Map<String, dynamic> json) => MyCourseModel(
        course: json["course"],
        instructor: json["instructor"],
        rating: json["rating"].toDouble(),
        time: json["time"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "course": course,
        "instructor": instructor,
        "rating": rating,
        "time": time,
        "img": img,
    };
}
