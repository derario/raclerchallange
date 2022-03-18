import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:providers/userprovider.dart';
import 'package:raclerchallange/resources/firebase_methods.dart';


//Add post screen

class postansicht extends StatefulWidget {
  postansicht({Key? key}) : super(key: key);

  @override
  State<postansicht> createState() => _postansichtState();
}

class _postansichtState extends State<postansicht> {



  void beitragPosten(String benutzerID,String benutzerName) {
    
  }

  

  @override
  Widget build(BuildContext context) {
    //final User user = Provider.of<UserProvider>(context).getUser;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
          title: const Text('Beitrag erstellen'),
          centerTitle: false,
          actions: [

            //Post Button
            TextButton(
              onPressed: null, 
              child: const Text(
                'Post', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
            ),
            ),
            ),
          ], 
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.merkur.de/bilder/2021/09/22/90996809/27132570-erstes-rendering-des-wohl-2022-erscheinenden-bmw-m3-touring-3usP2NV10Ra6.jpg'
                ),
              ),*/
              
              //Text Eingabe
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Teile deine Gedanken...",
                    //hintStyle: Color.fromARGB(225, 99, 99, 99),
                    border: InputBorder.none,
                  ),
                  maxLines: 8,
                ),
              ),
              /*SizedBox(
                height: 45,
                width: 45,
                child: AspectRatio(
                  aspectRatio:  487/451,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://www.merkur.de/bilder/2021/09/22/90996809/27132570-erstes-rendering-des-wohl-2022-erscheinenden-bmw-m3-touring-3usP2NV10Ra6.jpg'),
                        fit:  BoxFit.fill,
                        alignment: FractionalOffset.topCenter,
                        ),
                      ),
                      ),
                  ),
              )*/
            ],
          ),
        ],
      ),
    );
  }
}