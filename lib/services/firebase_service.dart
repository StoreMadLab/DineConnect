import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dineconnect/classes/dish.dart';
import 'package:dineconnect/services/job_posting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tuple/tuple.dart';

class FirebaseService {
  DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

  String? getPhoneNumber() {
    final user = FirebaseAuth.instance.currentUser;
    return user?.phoneNumber;
  }

  // Future<void> updateFullName(String phoneNumber,
  //     String updatedFullName) async {
  //   // Get the reference to the location where you want to update the full name.
  //   DatabaseReference userRef = _databaseReference.child(
  //       'users/$phoneNumber/fullName');
  //
  //   try {
  //     await userRef.set(updatedFullName);
  //   } catch (e) {
  //     print('Error updating full name: $e');
  //     // Handle the error.
  //   }
  // }

  Future<void> updateFullName(String phoneNumber, String updatedFullName) async {
    try {
      // Get the reference to the document where you want to update the full name.
      DocumentReference userRef = FirebaseFirestore.instance.collection('users').doc(phoneNumber);

      // Update the full name field in Firestore.
      await userRef.update({
        'fullName': updatedFullName,
      });
    } catch (e) {
      print('Error updating full name: $e');
      // Handle the error.
    }
  }



  // Future<void> updateLocation(String phoneNumber,
  //     String updatedLocation) async {
  //   // Get the reference to the location where you want to update the location.
  //   DatabaseReference userRef = _databaseReference.child(
  //       'users/$phoneNumber/location');
  //
  //   try {
  //     await userRef.set(updatedLocation);
  //   } catch (e) {
  //     print('Error updating location: $e');
  //     // Handle the error.
  //   }
  // }


  Future<void> updateLocation(String phoneNumber, String updatedLocation) async {
    try {
      // Get the reference to the document where you want to update the location.
      DocumentReference userRef = FirebaseFirestore.instance.collection('users').doc(phoneNumber);

      // Update the location field in Firestore.
      await userRef.update({
        'location': updatedLocation,
      });
    } catch (e) {
      print('Error updating location: $e');
      // Handle the error.
    }
  }


  // Future<String?> fetchUserData(String phoneNumber) async {
  //   try {
  //     final userRef = _databaseReference.child('users/$phoneNumber/fullName');
  //     DatabaseEvent databaseEvent = await userRef.once();
  //     print(databaseEvent.snapshot.value.toString());
  //
  //     if (databaseEvent.snapshot.value != null) {
  //       return databaseEvent.snapshot.value.toString();
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching user data: $e');
  //     return null;
  //   }
  // }

  Future<String?> fetchUserData(String phoneNumber) async {
    try {
      final userRef = FirebaseFirestore.instance.collection('users').doc(phoneNumber);
      final DocumentSnapshot docSnap = await userRef.get();

      if (docSnap.exists) {
        Map<String, dynamic>? data = docSnap.data() as Map<String, dynamic>?;
        return data?['fullName'].toString();
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching user data: $e');
      return null;
    }
  }



  // Future<String?> fetchLocation(String phoneNumber) async {
  //   try {
  //     final locationRef = _databaseReference.child(
  //         'users/$phoneNumber/location');
  //     DatabaseEvent databaseEvent = await locationRef.once();
  //     if (databaseEvent.snapshot.value != null) {
  //       return databaseEvent.snapshot.value.toString();
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching location data: $e');
  //     return null;
  //   }
  // }

  Future<String?> fetchLocation(String phoneNumber) async {
    try {
      final locationRef = FirebaseFirestore.instance.collection('users').doc(phoneNumber);
      final DocumentSnapshot docSnap = await locationRef.get();

      if (docSnap.exists) {
        Map<String, dynamic>? data = docSnap.data() as Map<String, dynamic>?;
        return data?['location'].toString();
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching location data: $e');
      return null;
    }
  }




//   Future<List<JobPosting>> fetchJobPostings(String phoneNumber) async {
//     try {
//       final jobPostingsRef = _databaseReference.child('jobs_post/$phoneNumber');
//       DatabaseEvent databaseEvent = await jobPostingsRef.once();
//
//       List<JobPosting> jobPostings = [];
//
//       print(databaseEvent.snapshot.value.toString());
//       if (databaseEvent.snapshot.value != null) {
//         List<dynamic> data = databaseEvent.snapshot.value as List<dynamic>;
//         data.forEach((value) {
//           JobPosting jobPosting = JobPosting(
//             employeeRole: value['employeeRole'],
//             hotelName: value['hotelName'],
//             location: value['location'],
//             salary: value['salary'],
//             jobDescription: value['jobDescription'],
//             status: value['status'],
//             workingHours: value['workingHours'],
//           );
//           jobPostings.add(jobPosting);
//         });
//       }
//       print(jobPostings.toString());
//       return jobPostings;
//     } catch (e) {
//       print('Error fetching job postings: $e');
//       return [];
//     }
//   }
// }
//   Future<List<JobPosting>> fetchJobPostings() async {
//     try {
//       final phoneNumber = FirebaseAuth.instance.currentUser?.phoneNumber;
//       if (phoneNumber != null) {
//         final jobPostingsRef = _databaseReference.child(
//             'jobs_post/$phoneNumber');
//         DatabaseEvent databaseEvent = await jobPostingsRef.once();
//
//         List<JobPosting> jobPostings = [];
//
//         if (databaseEvent.snapshot.value != null) {
//           dynamic data = databaseEvent.snapshot.value;
//
//           if (data is Map<dynamic, dynamic>) {
//             // Single object case
//             JobPosting jobPosting = JobPosting(
//               employeeRole: data['employeeRole'],
//               hotelName: data['hotelName'],
//               location: data['location'],
//               salary: data['salary'],
//               jobDescription: data['jobDescription'],
//               status: data['status'],
//               workingHours: data['workinghours'], // Correct the key to 'workinghours'
//             );
//
//             jobPostings.add(jobPosting);
//           } else {
//             print('Error: Data is not of type Map<String, dynamic>');
//           }
//         }
//
//         return jobPostings;
//       } else {
//         // Handle user not logged in
//         return [];
//       }
//     } catch (e) {
//       print('Error fetching job postings: $e');
//       return [];
//     }
//   }

  // Future<List<JobPosting>> fetchJobPostings() async {
  //   try {
  //     final phoneNumber = FirebaseAuth.instance.currentUser?.phoneNumber;
  //     List<JobPosting> jobPostings = [];
  //
  //     if (phoneNumber != null) {
  //       final jobPostingsRef = FirebaseFirestore.instance.collection('jobs_post').doc(phoneNumber).collection('job_data');
  //       final DocumentSnapshot docSnap = (await jobPostingsRef.get()) as DocumentSnapshot<Object?>;
  //
  //       if (docSnap.exists) {
  //         Map<String, dynamic>? data = docSnap.data() as Map<String, dynamic>?;
  //
  //         if (data != null) {
  //           // Single object case
  //           JobPosting jobPosting = JobPosting(
  //             employeeRole: data['employeeRole'],
  //             hotelName: data['hotelName'],
  //             location: data['location'],
  //             salary: data['salary'],
  //             jobDescription: data['jobDescription'],
  //             status: data['status'],
  //             workingHours: data['workinghours'], // Correct the key to 'workinghours'
  //           );
  //
  //           jobPostings.add(jobPosting);
  //         } else {
  //           print('Error: Data is not of type Map<String, dynamic>');
  //         }
  //       }
  //
  //       return jobPostings;
  //     } else {
  //       // Handle user not logged in
  //       return [];
  //     }
  //   } catch (e) {
  //     print('Error fetching job postings: $e');
  //     return [];
  //   }
  // }

  // Future<List<JobPosting>> fetchJobPostings() async {
  //   try {
  //     final phoneNumber = FirebaseAuth.instance.currentUser?.phoneNumber;
  //     List<JobPosting> jobPostings = [];
  //
  //     if (phoneNumber != null) {
  //       final jobPostingsRef = FirebaseFirestore.instance.collection('jobs_post').doc(phoneNumber).collection('job_data');
  //       final QuerySnapshot querySnap = await jobPostingsRef.get();
  //
  //       for (var doc in querySnap.docs) {
  //         Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;
  //
  //         if (data != null) {
  //           // Single object case
  //           JobPosting jobPosting = JobPosting(
  //             employeeRole: data['employeeRole'],
  //             hotelName: data['hotelName'],
  //             location: data['location'],
  //             salary: data['salary'],
  //             jobDescription: data['jobDescription'],
  //             status: data['status'],
  //             workingHours: data['workinghours'], // Correct the key to 'workinghours'
  //           );
  //
  //           jobPostings.add(jobPosting);
  //         } else {
  //           print('Error: Data is not of type Map<String, dynamic>');
  //         }
  //       }
  //
  //       return jobPostings;
  //     } else {
  //       // Handle user not logged in
  //       return [];
  //     }
  //   } catch (e) {
  //     print('Error fetching job postings: $e');
  //     return [];
  //   }
  // }


  Future<List<Tuple2<String, JobPosting>>> fetchJobPostings() async {
    try {
      final phoneNumber = FirebaseAuth.instance.currentUser?.phoneNumber;
      List<Tuple2<String, JobPosting>> jobPostings = [];

      if (phoneNumber != null) {
        final jobPostingsRef = FirebaseFirestore.instance.collection('jobs_post').doc(phoneNumber).collection('job_data');
        final QuerySnapshot querySnap = await jobPostingsRef.get();

        for (var doc in querySnap.docs) {
          Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

          if (data != null) {
            // Extract job ID from the document reference
            String jobId = doc.id;

            // Create a JobPosting object
            JobPosting jobPosting = JobPosting(
              employeeRole: data['employeeRole'],
              hotelName: data['hotelName'],
              location: data['location'],
              salary: data['salary'],
              jobDescription: data['jobDescription'],
              status: data['status'],
              workingHours: data['workinghours'], // Correct the key to 'workinghours'
            );

            // Add the tuple of job ID and job posting to the list
            jobPostings.add(Tuple2<String, JobPosting>(jobId, jobPosting));
          } else {
            print('Error: Data is not of type Map<String, dynamic>');
          }
        }

        return jobPostings;
      } else {
        // Handle user not logged in
        return [];
      }
    } catch (e) {
      print('Error fetching job postings: $e');
      return [];
    }
  }



  //add menu items
  Future<void> addMenuItem(String  dish, price, url) async {
    try {
      // String customerNumber = _phoneController.text;
      // String customerName = _nameController.text;
      // String orderList = _orderListController.text;
      // String description = _descriptionController.text;

      // Validate if any of the fields are empty
      if (dish.isEmpty ||
          price.isEmpty ||
          url.isEmpty) {
        // Show an error message or handle it accordingly
        return;
      }

      final phoneNumber = FirebaseAuth.instance.currentUser?.phoneNumber;

      final CollectionReference ordersCollection =
      FirebaseFirestore.instance.collection('menuitem');


      await ordersCollection.doc(phoneNumber).collection('menu').add({
        'dish':dish,
        'price': price,
        'url': url,
      });


    } catch (e) {
      // Handle errors
      print('Error adding order: $e');
    }
  }

//fetch dishes
  Future<List<Dish>> fetchMenuItems() async {
    try {
      final phoneNumber = FirebaseAuth.instance.currentUser?.phoneNumber;
      final CollectionReference menuCollection = FirebaseFirestore.instance.collection('menuitem');

      QuerySnapshot querySnapshot = await menuCollection.doc(phoneNumber).collection('menu').get();

      List<Dish> menuItems = [];
      querySnapshot.docs.forEach((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        Dish menuItem = Dish(
          dish: data['dish'],
          price: data['price'],
          url: data['url'],
        );
        menuItems.add(menuItem);
      });

      return menuItems;
    } catch (e) {
      print('Error fetching menu items: $e');
      return []; // Return an empty list in case of error
    }
  }


}
