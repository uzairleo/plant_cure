import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer_assistant_app/core/models/disease.dart';
import 'package:farmer_assistant_app/core/models/register-body.dart';

///
///This class have basically all of our Database Methods that we are going to use
///for getting disease information as well as also for registration purpose of user only first time
///
///
class DatabaseService {
  //instance for acessing firebaase instance
  FirebaseFirestore firebaseInstance = FirebaseFirestore.instance;

  Future<DocumentReference> registerUser(RegisterBody registerBody) async {
    print('@registerUser: uid is ${registerBody.toJson()}');
    try {
      return await firebaseInstance
          .collection('users')
          .add(registerBody.toJson())
          .catchError((e, s) {
        print("FirebaseException/RegistrationUser=> $e\n Stacktrace $s");
        throw e;
      });
    } on FirebaseException catch (e, s) {
      print("FirebaseException/RegistrationUser=> $e\n Stacktrace $s");
      throw e;
    }
  }

  Future<Disease> getAllAboutDisease(mlLabel) async {
    print('@getAllAboutDisease:====>label==> $mlLabel');
    Disease disease = Disease();
    try {
      QuerySnapshot snapshot = await firebaseInstance
          .collection('Fruit_Diseases')
          .where('label', isEqualTo: mlLabel)
          .get();

      if (snapshot.docs.isEmpty) {
        disease = Disease(label: "notfound");
        print("ITEM NOT FOUND ==> ${disease.toJson()}");
      } else {
        snapshot.docs.forEach((element) {
          print("each iteration=> ${element['label']}");
          disease = Disease.fromJson(element);
          print("ITEM FOUND ==> ${disease.toJson()}");
        });
      }
      return disease;
    } on FirebaseException catch (e, s) {
      print("FirebaseException/getAllAboutDisease=> $e\n Stacktrace $s");
      throw e;
    }
  }
}
