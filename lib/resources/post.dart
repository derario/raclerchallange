import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String beitrag_inhalt;

  const Post(
    {required this.beitrag_inhalt}
  );

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

  return Post(
    beitrag_inhalt: snapshot["beitrag_inhalt"]
    );
  }
}