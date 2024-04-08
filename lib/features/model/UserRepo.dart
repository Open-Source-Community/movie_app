import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:flutter/material.dart';
import 'package:store_app/features/model/usermodel.dart';

import '../../utils/exceptions/firebase_auth_exceptions.dart';

class UserRepository extends GetxController{

    static UserRepository get instance=>Get.find();
final FirebaseFirestore _db=FirebaseFirestore.instance;

  Future<void> SavedUserRecord (UserModel user) async{

   try{
     await _db.collection("Users").doc(user.id).set(user.toJson());
   }on FirebaseAuthException catch(e){
     throw Exception(e.message);
   }on FirebaseException catch(e){
     throw Exception(e.message);
   }on FormatException catch(e){
     throw Exception(e.message);
   }on PlatformException catch(e){
     throw Exception(e.message);
   } catch(e){
     throw("Something went Wrong, please try again.");
   }
  }
}