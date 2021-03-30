import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_jyotish/models/caroSlide.dart';

class DbService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<List<CaroSlide>> getData() async {
    List<CaroSlide> caro = [];

    try {
      // doc = await _firestore.collection("carouselslider").get();
      await _firestore
          .collection("carouselslider")
          .get()
          .then((QuerySnapshot querySnapshot) {
        print(querySnapshot.docs);
        querySnapshot.docs.forEach((doc) {
          caro.add(CaroSlide.fromMap(doc.data()));
        });
        // for(QueryDocumentSnapshot q in querySnapshot.docs){

        // }
      });

      print("done");
    } catch (e) {
      print(e);
    }
    return caro;
  }
}
