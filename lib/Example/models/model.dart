class GetData{
  late int id;
  late String uid;
  late String password;
  late String first_name;
  late String last_name;
  late String username;
  late String email;
  late String avatar;
  late String gender;
  late String phone_number;
  late String social_insurance_number;
  late String date_of_birth;
  late Employment employment;
  late Address address;
  late Credit_card credit_card;
  late Subscription subscription;

  GetData(
      this.id,
      this.uid,
      this.password,
      this.first_name,
      this.last_name,
      this.username,
      this.email,
      this.avatar,
      this.gender,
      this.phone_number,
      this.social_insurance_number,
      this.date_of_birth,
      this.employment,
      this.address,
      this.credit_card,
      this.subscription);
  factory GetData.fromJson(Map<String ,dynamic> json){
    return GetData(json["id"] as int,
        json["uid"] as String,
        json["password"] as String,
        json["first_name"] as String,
        json["last_name"] as String,
        json["username"] as String,
        json["email"] as String,
        json["avatar"] as String,
        json["gender"] as String,
        json["phone_number"] as String,
        json["social_insurance_number"] as String,
        json["date_of_birth"] as String,
        json["employment"],
        json["address"],
        json["credit_card"],
        json["subscription"]);
  }
}
class Employment{
  late String title;
  late String key_skill;

  Employment(this.title, this.key_skill);

  factory Employment.fromJson(Map<String,dynamic> json){
    return Employment(json["title"] as String,json["key_skill"] as String);
  }

}

class Address{
  late String city;
  late String street_name;
  late String street_address;
  late String zip_code;
  late String state;
  late String country;
  late Coordinates coordinates;

  Address(this.city, this.street_name, this.street_address, this.zip_code,
      this.state, this.country, this.coordinates);

  factory Address.fromJson(Map<String,dynamic> json){
    return Address(json["city"] as String, json["street_name"] as String, json["street_address"] as String, json["zip_code"] as String, json["zip_code"] as String, json["country"] as String, json["coordinates"]);
  }

}

class Coordinates{
  late double lat;
  late double lng;

  Coordinates(this.lat, this.lng);

  factory Coordinates.fromJson(Map<String,dynamic> json){
    return Coordinates(json["lat"] as double, json["lng"] as double);
  }

}

class Credit_card{
  late String cc_number;

  Credit_card(this.cc_number);
  factory Credit_card.fromJson(Map<String,dynamic> json){
    return Credit_card(json["cc_number"] as String);
  }
}

class Subscription{
  late String plan;
  late String status;
  late String payment_method;
  late String term;

  Subscription(this.plan, this.status, this.payment_method, this.term);
  factory Subscription.fromJson(Map<String, dynamic> json){
    return Subscription(json["plan"] as String, json["status"] as String, json["payment_method"] as String, json["term"] as String);
  }

}