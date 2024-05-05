import 'package:dubli/bloc_observer.dart.dart';
import 'package:dubli/core/networking/api_services.dart';
import 'package:dubli/core/networking/local_services.dart';
import 'package:dubli/dubli_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await LocalServices.init();
  ApiServices.init();
  runApp(const DubliApp());
}
