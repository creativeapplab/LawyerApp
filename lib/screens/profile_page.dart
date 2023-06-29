import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children:[
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmAuJ-VUZtJlodvHQ2VjSlBc3icTxjZ_gMvw&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),
                child: Container(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){},

                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmAuJ-VUZtJlodvHQ2VjSlBc3icTxjZ_gMvw&usqp=CAU'),
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      tileColor: Colors.white,
                     // leading: Text("john"),
                      subtitle: Text("hello@123",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
                      title: Text("john",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22)),
                    ),
                  ],
                ),
                ),
              ),
            ]
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.location_city),
                title: Text("Address :"),
                subtitle: Text("jssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"),


              ),
            ),
          )
        ],
      ),
    );
  }
}
