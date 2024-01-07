import 'package:dineconnect/services/job_posting.dart';
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

  Future<List<JobPosting>> fetchJobPostings(String phoneNumber) async {
    try {
      final jobPostingsRef = _databaseReference.child('jobs_post').child(phoneNumber);
      DatabaseEvent databaseEvent = await jobPostingsRef.once();

      List<JobPosting> jobPostings = [];

      if (databaseEvent.snapshot.value != null) {
        Map<String, dynamic> data = databaseEvent.snapshot.value as Map<String, dynamic>;

        data.forEach((uniqueReference, value) {
          JobPosting jobPosting = JobPosting(
            employeeRole: value['employeeRole'],
            hotelName: value['hotelName'],
            location: value['location'],
            salary: value['salary'],
            jobDescription: value['jobDescription'],
            status: value['status'],
            workingHours: value['workingHours'],
          );
          jobPostings.add(jobPosting);
        });
      }

      return jobPostings;
    } catch (e) {
      print('Error fetching job postings: $e');
      return [];
    }
  }
}
