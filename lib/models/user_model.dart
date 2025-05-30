import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

/// Model class representing user data.
class UserModel {
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
    this.isAdmin,
  });

  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;
  final bool? isAdmin;

  /// Helper function to get the full name.
  String get fullName => '${firstName.capitalize} ${lastName.capitalize}';

  /// Helper function to format phone number.
  // String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  /// Static function to split full name into first & last name.
  static List<String> nameParts(fullName) => fullName.split(" ");

  /// Static function to generate a username from the full name.
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername =
        "$firstName$lastName"; // Combine first & last name
    String usernameWithPrefix = "_$camelCaseUsername"; // Add "_" prefix
    return usernameWithPrefix;
  }

  /// Simple returns empty [UserModel]
  static UserModel empty() => UserModel(
        id: "",
        firstName: "",
        lastName: "",
        username: "",
        email: "",
        phoneNumber: "",
        profilePicture: "",
      );

  /// Convert model to JSON structure for storing data in Firebase.
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
      'isAdmin': isAdmin,
    };
  }

  /// Factory method to create a UserModel from a Firebase document snapshot.
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      // Logger().d(data);

      return UserModel(
          id: document.id,
          firstName: data['FirstName'],
          lastName: data['LastName'],
          username: data['Username'],
          email: data['Email'],
          phoneNumber: data['PhoneNumber'],
          profilePicture: data['ProfilePicture'],
          isAdmin: data['isAdmin']);
    } else {
      return UserModel.empty();
    }
  }
}
