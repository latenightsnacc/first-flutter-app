import 'package:first_flutter_app/models/Location_fact.dart';

class Location {
  final int id;
  String locationName;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.locationName, this.imagePath, this.facts);

  // API FUNCTION CALL
  static List<Location> fetchAll() {
    return [
      Location(1, 'Obudu Cattle Ranch', 'assets/images/img.jpg', [
        LocationFact('Overview',
            'Obudu Mountain Resort (formerly known as the Obudu Cattle Ranch) is a ranch and resort on the Obudu Plateau in Cross River State, Nigeria. It was developed in 1951 by M. McCaughley, a Scot who first explored the mountain ranges in 1949. He camped on the mountaintop of the Oshie Ridge on the Sankwala Mountains for a month before returning with Mr. Hugh Jones, a fellow rancher, in 1951. Together with Dr Crawfeild, they developed the Obudu Cattle Ranch.'),
        LocationFact('Tourism',
            'The ranch has in recent times seen an influx of both Nigerian and international tourists because of the development of tourist facilities by Cross-River State Government, which has turned the ranch into a well known holiday and tourist resort center in Nigeria. It has a serene climate compared to other regions in Nigeria'),
      ]),
      Location(2, 'Kanji Dam', 'assets/images/img.jpg', [
        LocationFact('Overview',
            'Kanji Dam (formerly known as the Obudu Cattle Ranch) is a ranch and resort on the Obudu Plateau in Cross River State, Nigeria. It was developed in 1951 by M. McCaughley, a Scot who first explored the mountain ranges in 1949. He camped on the mountaintop of the Oshie Ridge on the Sankwala Mountains for a month before returning with Mr. Hugh Jones, a fellow rancher, in 1951. Together with Dr Crawfeild, they developed the Obudu Cattle Ranch.'),
        LocationFact('Tourism',
            'The dam has in recent times seen an influx of both Nigerian and international tourists because of the development of tourist facilities by Cross-River State Government, which has turned the ranch into a well known holiday and tourist resort center in Nigeria. It has a serene climate compared to other regions in Nigeria'),
      ]),
      Location(3, 'Olumo Rock', 'assets/images/img.jpg', [
        LocationFact('Overview',
            'Olumo (formerly known as the Obudu Cattle Ranch) is a ranch and resort on the Obudu Plateau in Cross River State, Nigeria. It was developed in 1951 by M. McCaughley, a Scot who first explored the mountain ranges in 1949. He camped on the mountaintop of the Oshie Ridge on the Sankwala Mountains for a month before returning with Mr. Hugh Jones, a fellow rancher, in 1951. Together with Dr Crawfeild, they developed the Obudu Cattle Ranch.'),
        LocationFact('Tourism',
            'The rock has in recent times seen an influx of both Nigerian and international tourists because of the development of tourist facilities by Cross-River State Government, which has turned the ranch into a well known holiday and tourist resort center in Nigeria. It has a serene climate compared to other regions in Nigeria'),
      ]),
    ];
  }

  static Location _fetchByID(int locationID) {
    // fetch all locations, iterate them and when we find the location
    // with the ID we want, return it immediately
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
  }
}
