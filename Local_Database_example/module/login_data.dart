
class User{
  final String name;
  final String pass;

  User({required this.name, required this.pass});

    factory User.fromJson(Map<String, dynamic> json) => User(
      name: json["name"],
      pass: json["pass"],
    );

    Map<String, dynamic> toJson() => {
      "name": name,
      "pass": pass,
    };
}