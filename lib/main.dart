//@dart=2.8

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'helper.dart';
import 'newpage.dart';
import 'pdata.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyMore(),
  ));
}

class MyMore extends StatefulWidget {
  @override
  _MyMoreState createState() => _MyMoreState();
}

class _MyMoreState extends State<MyMore> {
  Services services = Services();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          title: Text('Complex Data'),
        ),
        body: FutureBuilder(
          future: services.getPData(),
          builder: (context, snap) {
            if (snap.hasData) {
              List<User> user = snap.data;
              return ListView(
                children: user
                    .map((User user) => Card(
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                          child: ListTile(
                            title: Text(user.name,style: TextStyle(color: Colors.white),),
                            subtitle: Text(user.username,style: TextStyle(color: Colors.white),),
                            leading: CircleAvatar(
                              child: Text(user.id.toString()),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyNewPage(user: user)));
                            },
                          ),
                        ))
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
