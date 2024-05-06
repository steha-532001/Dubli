// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:dubli/core/networking/local_services.dart';
import 'package:flutter/material.dart';

String? usertoken;
bool? onBording;

String? fullname;
String apiKey = 'AIzaSyDWw6-GqfdYeCjr1EudWYOw2rzyBUPL5zY';
String geminiBASEURL = 'https://generativelanguage.googleapis.com/v1beta';

Future<Map<String, dynamic>> fetchDataFromLocalStorage() async {
  onBording = await LocalServices.getData(key: 'onbording');
  usertoken = await LocalServices.getData(key: 'token');
  fullname = await LocalServices.getData(key: 'name');
  log('UserToken : $usertoken');
  log('onBording : $onBording');
  log('name : $fullname');
  return {'onBording': onBording, 'token': usertoken};
}

void showCustomSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

var userId;

const String firebaseUrl = 'https://identitytoolkit.googleapis.com/v1/accounts';
const String apiKey_2 =
    'AIzaSyDreQCNmimnvoJESFbMslPUgkdvICMPHII'; // Replace with your Firebase API key
const String firebaseAuthUrl =
    'https://identitytoolkit.googleapis.com/v1/accounts';
final String firebaseFirestoreBaseUrl =
    'https://firestore.googleapis.com/v1/projects/firsttrialdupli/databases/(default)/documents/users/$userId/info';

