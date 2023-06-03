

class UserData{
  final String name;
  final String phone;
  final String email;
  final String plate;

  UserData({
    required this.name,
    required this.phone,
    required this.email,
    required this.plate,
});
  Map<String, dynamic> toJson() =>{
    'name': name,
    'phone': phone,
    'email': email,
    'plate': plate
  };
  static UserData fromJson(Map<String, dynamic> json) => UserData(
     name: json['name'],
    phone: json['phone'],
    email: json['email'],
    plate: json['plate'],
  );


}