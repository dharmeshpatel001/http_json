import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'helper.dart';
import 'pdata.dart';

class MyNewPage extends StatelessWidget {
  final Services services = Services();
  final User user;

  MyNewPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(user.name,style: TextStyle(color: Colors.white),),
                accountEmail: Text(user.email,style: TextStyle(color: Colors.white),),
                currentAccountPicture:
                    CircleAvatar(child: Text(user.id.toString())),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          title: Text(user.username,style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Card(
            color: Colors.white70,
            child: Container(
              height: MediaQuery.of(context).size.height /2*1,
              width: MediaQuery.of(context).size.width / 1 *2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text("User Details",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),),
                      ),
                      Text('Uesr Name :-${user.name}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Email :-${user.email}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Phone  :-${user.phone}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Website :-${user.website}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Address:-${user.address.street},${user.address.suite},${user.address.city},${user.address.zipcode}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Location :-${user.address.geo.lat},${user.address.geo.lng}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text("Back",style: TextStyle(fontSize: 25,color: Colors.red),)),
                          TextButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>detail(user:user)));
                          }, child: Text("Company",style: TextStyle(fontSize: 25,color: Colors.red),)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
