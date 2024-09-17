class DataHomeScreenModel {
  final List<HomeHomeScreenModel> home;
  final List<TownHouseHomeScreenModel> townhouse;
  final List<CondoHomeScreenModel> condo;

  DataHomeScreenModel(
      {required this.home, required this.townhouse, required this.condo});
}

class HomeHomeScreenModel {
  final String id;
  final String name;
  final String badroom;
  final String bathroom;
  final String location;
  final String price;
  final String image;
  final bool selectDel;

  HomeHomeScreenModel({
    required this.id,
    required this.name,
    required this.badroom,
    required this.bathroom,
    required this.location,
    required this.price,
    required this.image,
    required this.selectDel,
  });

  HomeHomeScreenModel copyWith({
    String? id,
    String? name,
    String? badroom,
    String? bathroom,
    String? location,
    String? price,
    String? image,
    bool? selectDel,
  }) {
    return HomeHomeScreenModel(
      id: id ?? this.id,
      name: name ?? this.name,
      badroom: badroom ?? this.badroom,
      bathroom: bathroom ?? this.bathroom,
      location: location ?? this.location,
      price: price ?? this.price,
      image: image ?? this.image,
      selectDel: selectDel ?? this.selectDel,
    );
  }
}

class TownHouseHomeScreenModel {
  final String id;
  final String name;
  final String badroom;
  final String bathroom;
  final String location;
  final String price;
  final String image;
  final bool selectDel;

  TownHouseHomeScreenModel({
    required this.id,
    required this.name,
    required this.badroom,
    required this.bathroom,
    required this.location,
    required this.price,
    required this.image,
    required this.selectDel,
  });

  TownHouseHomeScreenModel copyWith({
    String? id,
    String? name,
    String? badroom,
    String? bathroom,
    String? location,
    String? price,
    String? image,
    bool? selectDel,
  }) {
    return TownHouseHomeScreenModel(
      id: id ?? this.id,
      name: name ?? this.name,
      badroom: badroom ?? this.badroom,
      bathroom: bathroom ?? this.bathroom,
      location: location ?? this.location,
      price: price ?? this.price,
      image: image ?? this.image,
      selectDel: selectDel ?? this.selectDel,
    );
  }
}

class CondoHomeScreenModel {
  final String id;
  final String name;
  final String badroom;
  final String bathroom;
  final String location;
  final String price;
  final String image;
  final bool selectDel;

  CondoHomeScreenModel({
    required this.id,
    required this.name,
    required this.badroom,
    required this.bathroom,
    required this.location,
    required this.price,
    required this.image,
    required this.selectDel,
  });

  CondoHomeScreenModel copyWith({
    String? id,
    String? name,
    String? badroom,
    String? bathroom,
    String? location,
    String? price,
    String? image,
    bool? selectDel,
  }) {
    return CondoHomeScreenModel(
      id: id ?? this.id,
      name: name ?? this.name,
      badroom: badroom ?? this.badroom,
      bathroom: bathroom ?? this.bathroom,
      location: location ?? this.location,
      price: price ?? this.price,
      image: image ?? this.image,
      selectDel: selectDel ?? this.selectDel,
    );
  }
}

DataHomeScreenModel dataHomeScreen = DataHomeScreenModel(
  home: [
    HomeHomeScreenModel(
      id: "H000001",
      name: "บ้านแสนสบาย",
      badroom: "3",
      bathroom: "4",
      location: "เชียงใหม่",
      price: "1200000",
      image: "assets/images/homes/home_1.jpg",
      selectDel: false,
    ),
    HomeHomeScreenModel(
      id: "H000002",
      name: "บ้านแสนสงบ",
      badroom: "4",
      bathroom: "5",
      location: "กาญจนบุรี",
      price: "1500000",
      image: "assets/images/homes/home_2.jpg",
      selectDel: false,
    ),
    HomeHomeScreenModel(
      id: "H000003",
      name: "บ้านร่มเย็น",
      badroom: "2",
      bathroom: "3",
      location: "ขอนแก่น",
      price: "2000000",
      image: "assets/images/homes/home_3.jpg",
      selectDel: false,
    ),
    HomeHomeScreenModel(
      id: "H000004",
      name: "บ้านแสนสนุก",
      badroom: "3",
      bathroom: "4",
      location: "เลย",
      price: "2500000",
      image: "assets/images/homes/home_4.jpg",
      selectDel: false,
    ),
    HomeHomeScreenModel(
      id: "H000005",
      name: "บ้านสบาย",
      badroom: "4",
      bathroom: "6",
      location: "ภูเกต",
      price: "3000000",
      image: "assets/images/homes/home_5.jpg",
      selectDel: false,
    ),
  ],
  townhouse: [
    TownHouseHomeScreenModel(
      id: "T000001",
      name: "ทาวน์เฮ้าส์สบาย",
      badroom: "2",
      bathroom: "3",
      location: "เชียงใหม่",
      price: "1200000",
      image: "assets/images/townhouse/townhouse_1.jpg",
      selectDel: false,
    ),
    TownHouseHomeScreenModel(
      id: "T000002",
      name: "ทาวน์เฮ้าส์ร่มเย็น",
      badroom: "3",
      bathroom: "4",
      location: "กรุงเทพมหานคร",
      price: "1500000",
      image: "assets/images/townhouse/townhouse_2.jpg",
      selectDel: false,
    ),
    TownHouseHomeScreenModel(
      id: "T000003",
      name: "ทาวน์เฮ้าส์สงบ",
      badroom: "3",
      bathroom: "4",
      location: "ปทุมธานี",
      price: "2000000",
      image: "assets/images/townhouse/townhouse_3.jpg",
      selectDel: false,
    ),
    TownHouseHomeScreenModel(
      id: "T000004",
      name: "ทาวน์เฮ้าส์สีฟ้า",
      badroom: "2",
      bathroom: "3",
      location: "อยุธยา",
      price: "2500000",
      image: "assets/images/townhouse/townhouse_4.jpg",
      selectDel: false,
    ),
    TownHouseHomeScreenModel(
      id: "T000005",
      name: "ทาวน์เฮ้าส์รวยทรัพย์",
      badroom: "2",
      bathroom: "3",
      location: "ภูเกต",
      price: "3000000",
      image: "assets/images/townhouse/townhouse_5.jpg",
      selectDel: false,
    ),
  ],
  condo: [
    CondoHomeScreenModel(
      id: "C000001",
      name: "คอนโดรวยทรัพย์",
      badroom: "1",
      bathroom: "2",
      location: "ภูเกต",
      price: "1200000",
      image: "assets/images/condo/condo_1.jpg",
      selectDel: false,
    ),
    CondoHomeScreenModel(
      id: "C000002",
      name: "คอนโดมหาแฮง",
      badroom: "2",
      bathroom: "2",
      location: "กรุงเทพมหานคร",
      price: "1500000",
      image: "assets/images/condo/condo_2.jpg",
      selectDel: false,
    ),
    CondoHomeScreenModel(
      id: "C000003",
      name: "คอนโดพารวย",
      badroom: "2",
      bathroom: "3",
      location: "กรุงเทพมหานคร",
      price: "2000000",
      image: "assets/images/condo/condo_3.jpg",
      selectDel: false,
    ),
    CondoHomeScreenModel(
      id: "C000004",
      name: "คอนโดมีสุข",
      badroom: "1",
      bathroom: "2",
      location: "กรุงเทพมหานคร",
      price: "2500000",
      image: "assets/images/condo/condo_4.jpg",
      selectDel: false,
    ),
    CondoHomeScreenModel(
      id: "C00000",
      name: "คอนโดมหาสงบ",
      badroom: "2",
      bathroom: "3",
      location: "กรุงเทพมหานคร",
      price: "3000000",
      image: "assets/images/condo/condo_5.jpg",
      selectDel: false,
    ),
  ],
);
