// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raghu_education/view/signUp/verify/verify.dart';

class CommanLoader {
  static loader() {
    Get.defaultDialog(
        title: "",
        content: Column(
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 8),
            Text("Loading......")],
        ));
  }

  static void showSuccessDialog(
      {String title = 'Success', String? description = 'Sucessfully Added'}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Get.textTheme.headline4,
              ),
              Text(
                description ?? '',
                style: Get.textTheme.headline6,
              ),
              ElevatedButton(
                onPressed: () {

                  if (Get.isDialogOpen!) Get.back();
                },
                child: Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showErrorDialog(
      {String title = 'Error', String? description = 'Something went wrong'}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Get.textTheme.headline4,
              ),
              Text(
                description ?? '',
                style: Get.textTheme.headline6,
              ),
              ElevatedButton(
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }

//hide loading
  static void hideLoading() {
    if (Get.isDialogOpen!) Get.back();
  }

  static hideLoader() {
     Get.to(()=> VerifyScreen());
    // if (Get.isDialogOpen!) Get.back();
  }

  static message(String message) {
    Get.defaultDialog(
          title: " Status ",
        content: Column(
          children: [Text(message)],
        ));
  }
}
