class UserData {
  final String name;
  final String email;

  UserData({
    required this.name,
    required this.email,
  });

  factory UserData.fromMap(Map<dynamic, dynamic> map) {
    return UserData(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }
}