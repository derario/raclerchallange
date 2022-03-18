import 'package:flutter/material.dart';
import 'beitrag.dart';
import 'beitrag_v2.dart';
import 'forumfeed.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key }) :super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.refresh_rounded, size: 25,),
          onPressed: () {
          },
          ),
          title: const Text('RaclerForum', style: TextStyle(fontWeight: FontWeight.bold),)
      ),

      //-------------------------------------------------------------
      // Body
      body: const forumfeed(),     

      floatingActionButton: FloatingActionButton(
        child: floatingActionButton(),
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.black,
            context: context,
            builder: (context){
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 370,
                  //Auslagern des Feeds
                  child: postansicht(),
                ),
              );
            },
          );
        }
      ),



      //App Navigation Nur zur Optik, da nur 1. Seite
      bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
         BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
         BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
         ]
      )
       
    );
  }
  
  Icon floatingActionButton() => const Icon(Icons.add_rounded);
}