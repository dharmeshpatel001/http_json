import 'package:flutter/material.dart';
import 'helper.dart';
import 'pdata.dart';

class detail extends StatelessWidget {
  Services services = Services();
  final User user;

  detail({required this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(user.name),
                  accountEmail: Text(user.email),
                  currentAccountPicture:
                  CircleAvatar(child: Text(user.id.toString())),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.grey[800],
            title: Text(user.username),
          ),
          body: Center(
            child: Card(
              color: Colors.white70,
              child: Container(
                height: MediaQuery.of(context).size.height /2*0.70,
                width: MediaQuery.of(context).size.width / 0*0.40,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Company Details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black54),),
                      SizedBox(height: 10,),
                      Text('Company Name:-${user.company.name}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Egancy Name:-${user.company.catchPhrase}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      Text('Product Name :-${user.company.bs}',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      TextButton(

                          onPressed: () {
                        Navigator.pop(context);
                      }, child: Text("Back",style: TextStyle(fontSize: 25,color: Colors.red),)),
                    ],
                  ),
                ),
              ),
            ),
          ),
    ));
  }
}
