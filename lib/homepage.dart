
import 'package:back_end/Database/database.dart';
import 'package:back_end/singin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final googleSignIn = GoogleSignIn();
  
  void logout()async{
    await googleSignIn.disconnect();
  FirebaseAuth.instance.signOut();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            logout();

              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingIn()));


          },
              icon: Icon(Icons.logout))
        ],
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){


        },child: Text('out'),),
      ),
    );
  }
}
