

class LocationData {

  final String city;
  final String state;
  final String country;
  final String postCode;
  final Street street;

  LocationData({
    required this.city,
    required this.state,
    required this.country,
    required this.postCode,
    required this.street,
  });

  factory LocationData.fromJson(Map<String, dynamic> json){
    return LocationData(
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postCode: json["postcode"].toString(),
        street: Street.fromJson(json["street"]));
  }

}

class Street{
  final int number;
  final String name;

  Street({
    required this.number,
    required this.name,
});

  factory Street.fromJson(Map<String,dynamic> json){
    return Street (
      number: json["number"],
      name: json["name"],
    );
  }

}