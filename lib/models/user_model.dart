class UserModel {

  final String id;
  final String userName;
  final String email;

  UserModel({required this.id, required this.userName, required this.email});

  //Convert Model to Map (Json)

  Map<String,dynamic> toMap(){
    return {
      "id": id,
      "userName": userName,
      "email": email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map){
    return UserModel(
      id: map["id"],
      userName: map["userName"],
      email: map["email"]
    );
  }

}