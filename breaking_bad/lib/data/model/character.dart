class Character {
  int? charId;
  String? name;
  String? nickName;
  String? image;
  List<dynamic>? jobs;
  String? statusDeadOrAlive;
  List<dynamic>? appearanceOfSeasons;
  List<dynamic>? betteryCallSaulAppearnce;
  String? actorName;
  String? categoryFortwoSeries;

  Character.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    nickName = json['nickname'];
    image = json['img'];
    jobs = json['occupation'];
    statusDeadOrAlive = json['status'];
    appearanceOfSeasons = json['appearance'];
    betteryCallSaulAppearnce = json['better_call_saul_appearance'];
    actorName = json['portrayed'];
    categoryFortwoSeries = json['category'];
  }
}
