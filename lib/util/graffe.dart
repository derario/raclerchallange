/*
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 600,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 400,
                        height: 400,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Teile deine Gedanken.'
                          ),

                         ),
                      ),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },


        backgroundColor: Colors.blueGrey,
        elevation: 12,
        //child: const Icon(Icons.add_rounded),
      ), 
      
      
      
      
      
      
      
        Padding(padding: const EdgeInsets.fromLTRB(5, 16, 5, 10),
        child:
        Row( children: 
          [Container(width: 40,height: 40, 
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              //Icon(Icons.add_rounded),
            ),
           ),
           SizedBox(width: 5),
           Text('UserName'),
           SizedBox(width: 5,),
           Text('vor 10 Minuten'),
         ],
        ),





              children: [      
      Container(
        width: 400,
        height: 100,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Teile deine Gedanken.'
          ),

        ),
        )
      ],



  final TextEditingController _desciptionController = TextEditingController();


      @override
  void dispose(){
    super.dispose();
    _desciptionController.dispose();
  }
        ),
        

            child: RichText(
              text: TextSpan(
                text: 'Nutzername',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                TextSpan(
                text: 'Inhalt des Beitrags', 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
              ),
              ],
              ),
                )
        
          if (test != null) return;
    //final fileName = basename(test!.path);
    final destination = 'files/$test';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putString(test);
    } catch (e) {
      print('error occured');
    }
        */