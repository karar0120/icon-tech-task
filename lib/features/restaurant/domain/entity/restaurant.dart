class RestaurantBranches {
  final List<Data> restaurantBranches;
  RestaurantBranches({required this.restaurantBranches});
}

class Data {
  final int id;
  final String lat;
  final String long;
  final String phone;
  final String statusAr;
  final String statusEn;
  final double distance;
  final String image;
  final Title title;
  final Address address;

  Data({
    required this.id,
    required this.lat,
    required this.long,
    required this.address,
    required this.distance,
    required this.image,
    required this.phone,
    required this.statusAr,
    required this.statusEn,
    required this.title,
  });
}

class Title {
  final String en;
  final String ar;
  Title({
    required this.ar,
    required this.en,
  });
}

class Address {
  final String en;
  final String ar;

  Address({required this.en, required this.ar});
}
