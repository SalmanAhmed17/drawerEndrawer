// import 'package:flutter/cupertino.dart';
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main(){
  runApp(const Salman());
}

class Salman extends StatelessWidget {
  const Salman({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

MySnackBar(Message, context){
  return ScaffoldMessenger.of
  (context).showSnackBar
  (SnackBar(
    content: Text(
      Message),),
      );
}

MyAlertDailog(context){
  return showDialog(
    context: context, 
    builder: (BuildContext context){
    return const Expanded(
      child: AlertDialog(
        title: Text("Do you want it?"),
        content: Text("Are you sure"),
        actions: [],
        ),
      );
  });
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SALMAN"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
  onTap: ((index) {
    if(index==0){
      MySnackBar("I am home menu", context);
    }if(index==1){
      MySnackBar("I am contact menu", context);
    }if(index==2){
      MySnackBar("I am profile", context);
    }
  }),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
             DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black),
                  accountName: const Text("Salman"),
                  accountEmail: const Text("sajoynal17@gmail.com"),
                  currentAccountPicture: Image.network
                  ("https://cdn.fstoppers.com/styles/full/s3/media/2019/12/04/nando-jpeg-quality-006-too-much.jpg"),                  
                  currentAccountPictureSize: const Size.square(40),
                  // onDetailsPressed: () {
                  //   MySnackBar("", context);
                  // },
                  ),
                  ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: (() {
                  MySnackBar("I am Home", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.whatsapp),
                title: const Text("Whatsapp"),
                onTap: (() {
                  MySnackBar("I am Whatsapp", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.phone_android_outlined),
                title: const Text("Phone"),
                onTap: (() {
                  MySnackBar("I am Phone", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.email_rounded),
                title: const Text("Email"),
                onTap: (() {
                  MySnackBar("I am Email", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text("Contact"),
                onTap: (() {
                  MySnackBar("I am Contact", context);
                }),
              ),
          ],
          ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black),
                  accountName: const Text("Salman"),
                  accountEmail: const Text("sajoynal17@gmail.com"),
                  currentAccountPicture: Image.network("https://www.facebook.com/photo/?fbid=3560299927531226&set=a.2007548836139684"),
                  // onDetailsPressed: () {
                  //   MySnackBar("", context);
                  // },
                  ),
                  ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: (() {
                  MySnackBar("I am Home", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.whatsapp),
                title: const Text("Whatsapp"),
                onTap: (() {
                  MySnackBar("I am Whatsapp", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.phone_android_outlined),
                title: const Text("Phone"),
                onTap: (() {
                  MySnackBar("I am Phone", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.email_rounded),
                title: const Text("Email"),
                onTap: (() {
                  MySnackBar("I am Email", context);
                }),
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text("Contact"),
                onTap: (() {
                  MySnackBar("I am Contact", context);
                }),
              ),
          ],
          ),
      ),
      body: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 6),
        ),
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            const DrawerHeader(child: Text("nAME"),
            ),
            ListTile(title: const Text("sALMAN"), subtitle: const Text("AHMED"),onTap: (() {
              const Dialog();
            }),

            ),

            ],),
      ),
    );
  }
}