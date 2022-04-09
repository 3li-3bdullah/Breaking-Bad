class Home{
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late String actorName;
  late List<dynamic> jobs;
  late List<dynamic> appearanceOfSeasons;
  late List<dynamic> betterCallSaulAppearance;
  late String statusDeadOrAlive;
  late String categoryForTwoSeries;

  Home.formJson(Map<String,dynamic> json){
    charId = json['char_id'];
    name = json['name'];
    nickName = json['nickname'];
    image = json['img'];
    actorName = json['portrayed'];
    jobs= json['occupation'];
    appearanceOfSeasons = json['apprearance'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
    statusDeadOrAlive = json['status'];
    categoryForTwoSeries = json['category'];
  }
}