import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_logics.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/detail_page1.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/home_page1.dart';
import 'package:flutter_cubit/pages/home_page2.dart';
import 'package:flutter_cubit/pages/home_page3.dart';
import 'package:flutter_cubit/pages/navpages/main_page.dart';
import 'package:flutter_cubit/pages/navpages1/main_page1.dart';
import 'package:flutter_cubit/pages/navpages1/main_page2.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';
import 'package:flutter_cubit/pages/welcome_page1.dart';
import 'package:flutter_cubit/pages/welcome_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context)=> AppCubits(),
        child: AppCubitLogics(),
      )
    );
  }
}
