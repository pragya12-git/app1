import 'dart:convert';

import 'package:app1/DetailBuilder/detail_builder.dart';
import 'package:app1/models/user_data_model.dart';
import 'package:app1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchDataScreen extends StatefulWidget {
  const FetchDataScreen({super.key});

  @override
  State<FetchDataScreen> createState() => _FetchDataScreenState();
}

class _FetchDataScreenState extends State<FetchDataScreen> {
  Future<UserData> fetchData() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/users"));
    print(response.body);

    UserData user = UserData.fromJson(jsonDecode(response.body));
    print(user.users[0].firstName);
    print(user.users[1].lastName);
    print(user.users[2].maidenName);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var data = await fetchData();
          //

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  userData: data,
                ),
              ));
        },
        child: const Icon(Icons.cloud),
      ),
    );
  }
}
