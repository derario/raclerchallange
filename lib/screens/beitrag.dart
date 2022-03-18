import 'package:flutter/material.dart';
 

 class beitrag extends StatefulWidget {
   const beitrag({ Key? key }) : super(key: key);
 
   @override
   _beitragState createState() => _beitragState();
 }
 
 class _beitragState extends State<beitrag> {

  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }


   @override
   Widget build(BuildContext context) {
     return  Container(
      width: MediaQuery.of(context).size.width,
      height: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //text
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Beitrag posten', style: const TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          //text

          // Textfeld & eingabe
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1,
                  ),
                  decoration: InputDecoration(
                  
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    labelText: 'Teile deine Gedanken.',
                  ),
                  

                ),
             ),
          
          //Butons: Abbrechen & Posten
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                      child: Text('Abbrechen'),
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(170,60)
                      ),
        
        
                    ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    child: Text('Posten'),
                    style: OutlinedButton.styleFrom(
                    fixedSize: const Size(170,60),)
                  ),
                ],
             ),    
          )
        ],
      ),
      
     );
   }
 }