class User {
  String id;
  String name;
  String email;
  String address;
  String phone;
  String role;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });
}
