import 'package:flutter/material.dart';

class forumfeed extends StatelessWidget {
  const forumfeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16 , 16, 16, 5)
                    ,
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Benutzername', 
                          style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(225,99,99,99)),),
                          Text('Uhrzeit', 
                          style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 99, 99, 99)),),
                      ],  
                    ),
                  ),
                  ),
              ],
            ),
            
          ),
          Container(
            //color: Colors.blueGrey,
            width: MediaQuery.of(context).size.width * 0.95,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            //padding: const EdgeInsetsDirectional.fromSTEB(16 , 16, 16, 5),
            child: Padding(
              padding: const  EdgeInsetsDirectional.fromSTEB(16 , 16, 16, 5),
                child: Text('Inhalt des geposteten Beitrags.', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white)),
              ),
              
          ),
        ],
      ),
    );
  }
}