class User{
  String name;
  String fam;
  int age;

  User({required this.name,required this.fam,required this.age});


  Map mapGa(){

    Map javob = {
      "name": name,
      "fam" : fam,
      "age": age,
    };
    return  javob;
  }


  factory User.mapDan(Map map){
    return User(name: map["name"], fam: map["fam"], age: map["age"]);
  }
}