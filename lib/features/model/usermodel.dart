import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:store_app/utils/formatters/formatter.dart';
import 'package:firebase_core/firebase_core.dart';
class UserModel{
  final String id;
   String firstName;
   String lastName;
  final String userName;
   String phoneNumber;
  final String email;
   String profilpicture;

  UserModel({required this.id, required this.firstName, required this.lastName, required this.userName, required this.phoneNumber, required this.email, required this.profilpicture});

  String get fullName =>'$firstName $lastName';
  String get formatPhoneNumber =>TFormatter.formatPhoneNumber(phoneNumber);
  static generatUsename(fullName) {
    List <String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length>1?nameParts[1].toLowerCase():"";

    String camelcaseUsername ="$firstName$lastName";
    String userNamewithoutPerfix ="cwt_$camelcaseUsername";
    return userNamewithoutPerfix;

  }

  static UserModel empty() =>UserModel(id: '', firstName: '', lastName: '', userName: '', phoneNumber: '', email: '', profilpicture: '');

  Map<String,dynamic>toJson(){
    return{
      "FirstName":firstName,
      "LastName":lastName,
      "UserName":userName,
      "Email":email,
      "PhoneNumber":phoneNumber,
      "ProfilePicture":profilpicture
    };
  }
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data() ?? {};
    return UserModel(
      id: document.id,
      firstName: data['FirstName'] ?? '',
      lastName: data['LastName'] ?? '',
      userName: data['UserName'] ?? '',
      phoneNumber: data['PhoneNumber'] ?? '',
      email: data['Email'] ?? '',
      profilpicture: data['ProfilePicture'] ?? '',
    );
  }


  }



