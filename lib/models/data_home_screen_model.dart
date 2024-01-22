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
  final String image;

  HomeHomeScreenModel(
      {required this.id,
      required this.name,
      required this.badroom,
      required this.bathroom,
      required this.location,
      required this.image});
}

class TownHouseHomeScreenModel {
  final String id;
  final String name;
  final String badroom;
  final String bathroom;
  final String location;
  final String image;

  TownHouseHomeScreenModel(
      {required this.id,
      required this.name,
      required this.badroom,
      required this.bathroom,
      required this.location,
      required this.image});
}

class CondoHomeScreenModel {
  final String id;
  final String name;
  final String badroom;
  final String bathroom;
  final String location;
  final String image;

  CondoHomeScreenModel(
      {required this.id,
      required this.name,
      required this.badroom,
      required this.bathroom,
      required this.location,
      required this.image});
}

DataHomeScreenModel dataHomeScreen = DataHomeScreenModel(
  home: [
    HomeHomeScreenModel(
      id: "H000001",
      name: "บ้านแสนสบาย",
      badroom: "3",
      bathroom: "4",
      location: "เชียงใหม่",
      image: "assets/images/homes/home_1.jpg",
    ),
    HomeHomeScreenModel(
      id: "H000002",
      name: "บ้านแสนสงบ",
      badroom: "4",
      bathroom: "5",
      location: "กาญจนบุรี",
      image: "assets/images/homes/home_2.jpg",
    ),
    HomeHomeScreenModel(
      id: "H000003",
      name: "บ้านร่มเย็น",
      badroom: "2",
      bathroom: "3",
      location: "ขอนแก่น",
      image: "assets/images/homes/home_3.jpg",
    ),
    HomeHomeScreenModel(
      id: "H000004",
      name: "บ้านแสนสนุก",
      badroom: "3",
      bathroom: "4",
      location: "เลย",
      image: "assets/images/homes/home_4.jpg",
    ),
    HomeHomeScreenModel(
      id: "H000005",
      name: "บ้านสบาย",
      badroom: "4",
      bathroom: "6",
      location: "ภูเกต",
      image: "assets/images/homes/home_5.jpg",
    ),
  ],
  townhouse: [
    TownHouseHomeScreenModel(
      id: "T000001",
      name: "ทาวน์เฮ้าส์สบาย",
      badroom: "2",
      bathroom: "3",
      location: "เชียงใหม่",
      image: "assets/images/townhouse/townhouse_1.jpg",
    ),
    TownHouseHomeScreenModel(
      id: "T000002",
      name: "ทาวน์เฮ้าส์ร่มเย็น",
      badroom: "3",
      bathroom: "4",
      location: "กรุงเทพ",
      image: "assets/images/townhouse/townhouse_2.jpg",
    ),
    TownHouseHomeScreenModel(
      id: "T000003",
      name: "ทาวน์เฮ้าส์สงบ",
      badroom: "3",
      bathroom: "4",
      location: "ปทุมธานี",
      image: "assets/images/townhouse/townhouse_3.jpg",
    ),
    TownHouseHomeScreenModel(
      id: "T000004",
      name: "ทาวน์เฮ้าส์สีฟ้า",
      badroom: "2",
      bathroom: "3",
      location: "อยุธยา",
      image: "assets/images/townhouse/townhouse_4.jpg",
    ),
    TownHouseHomeScreenModel(
      id: "T000005",
      name: "ทาวน์เฮ้าส์รวยทรัพย์",
      badroom: "2",
      bathroom: "3",
      location: "ภูเกต",
      image: "assets/images/townhouse/townhouse_5.jpg",
    ),
  ],
  condo: [
    CondoHomeScreenModel(
      id: "C000001",
      name: "คอนโดรวยทรัพย์",
      badroom: "1",
      bathroom: "2",
      location: "ภูเกต",
      image: "assets/images/condo/condo_1.jpg",
    ),
    CondoHomeScreenModel(
      id: "C000002",
      name: "คอนโดมหาแฮง",
      badroom: "2",
      bathroom: "2",
      location: "กรุงเทพ",
      image: "assets/images/condo/condo_2.jpg",
    ),
    CondoHomeScreenModel(
      id: "C000003",
      name: "คอนโดพารวย",
      badroom: "2",
      bathroom: "3",
      location: "กรุงเทพ",
      image: "assets/images/condo/condo_3.jpg",
    ),
    CondoHomeScreenModel(
      id: "C000004",
      name: "คอนโดมีสุข",
      badroom: "1",
      bathroom: "2",
      location: "กรุงเทพ",
      image: "assets/images/condo/condo_4.jpg",
    ),
    CondoHomeScreenModel(
      id: "C00000",
      name: "คอนโดมหาสงบ",
      badroom: "2",
      bathroom: "3",
      location: "กรุงเทพ",
      image: "assets/images/condo/condo_5.jpg",
    ),
  ],
);
