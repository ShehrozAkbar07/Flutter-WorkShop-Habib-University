import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  List<String> users = [];
//user
  void _fetchUser() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);

    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    var list = jsonDecode(response.body) as List;
    users.addAll(list.map((e) => e['name']));
  

    setState(() {

    });
  }

  @override
  void initState() {
    

    super.initState();
    _fetchUser(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
              child: ListView(
            children: users
                .map((e) => ListTile(
                      title: Text(e),
                      subtitle: Text(e),
                    ))
                .toList(),
          )),
        
          ElevatedButton(
              onPressed: () async {
                print(users.length);
              },
              child: Text(''))
        ],
      ),
    );
  }
}


