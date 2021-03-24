class Horo {
  String date;
  String horoscope;
  String sunsign;
  //String img_url;
  Horo({this.date, this.horoscope, this.sunsign});
  factory Horo.fromJson(Map<String, dynamic> json) {
    return Horo(
        date: json['date'],
        horoscope: json['horoscope'],
        sunsign: json['sunsign']);
  }
}
