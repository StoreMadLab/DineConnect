import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

  String? getPhoneNumber() {
    final user = FirebaseAuth.instance.currentUser;
    return user?.phoneNumber;
  }

  Future<void> updateFullName(String phoneNumber, String updatedFullName) async {
    // Get the reference to the location where you want to update the full name.
    DatabaseReference userRef = _databaseReference.child('users/$phoneNumber/fullName');

    try {
      await userRef.set(updatedFullName);
    } catch (e) {
      print('Error updating full name: $e');
      // Handle the error.
    }
  }

  Future<void> updateLocation(String phoneNumber, String updatedLocation) async {
    // Get the reference to the location where you want to update the location.
    DatabaseReference userRef = _databaseReference.child('users/$phoneNumber/location');

    try {
      await userRef.set(updatedLocation);
    } catch (e) {
      print('Error updating location: $e');
      // Handle the error.
    }
  }

  Future<String?> fetchUserData(String phoneNumber) async {
    try {
      final userRef = _databaseReference.child('users/$phoneNumber/fullName');
      DatabaseEvent databaseEvent = await userRef.once();
      if (databaseEvent.snapshot.value != null) {
        return databaseEvent.snapshot.value.toString();
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching user data: $e');
      return null;
    }
  }

  Future<String?> fetchLocation(String phoneNumber) async {
    try {
      final locationRef = _databaseReference.child('users/$phoneNumber/location');
      DatabaseEvent databaseEvent = await locationRef.once();
      if (databaseEvent.snapshot.value != null) {
        return databaseEvent.snapshot.value.toString();
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching location data: $e');
      return null;
    }
  }
}
