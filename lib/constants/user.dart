

class User {
  String telp, perangkat;

  User(this.telp, this.perangkat);

  User.fromJson(Map<String,dynamic>json) : telp = json['telp'], perangkat = json['perangkat'];

  Map<String,dynamic> toJson()=>{
    'telp': telp,
    'perangkat': perangkat
  };
}